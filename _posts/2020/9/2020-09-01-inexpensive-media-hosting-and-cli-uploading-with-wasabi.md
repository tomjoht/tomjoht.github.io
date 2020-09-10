---
title: "Inexpensive media hosting and CLI uploading with Wasabi?"
permalink: /blog/inexpensive-media-hosting-and-cli-uploading-with-wasabi/
categories:
- writing
keywords:
rebrandly: https://idbwrtng.com/wasabimediahosting
description: "If you need an inexpensive way to host media, and your egress GB bandwidth (related to site traffic) is less than the GB data you're storing, Wasabi might be an option to explore. Combined with GitHub Pages, this <i>could</i> be an inexpensive way to host a website."
---

## The challenge of media hosting

About six years ago I switched off Bluehost and WordPress over to Jekyll and GitHub Pages. I quickly learned that hosting many image and audio files in a GitHub repository doesn't work, so I continued to host my media on Bluehost for a couple of years. Eventually, I hit Bluehost's max size limit with shared hosting (mainly due to audio files with podcasts), so I decided to shift all media over to what I thought would be the less expensive and more logical hosting source: [Amazon S3](https://aws.amazon.com/free/storage/s3/).

I shifted all my media over to an S3 bucket, then hooked up the bucket to [CloudFront](https://aws.amazon.com/cloudfront/) for a content distributed network (CDN) and also to [Route 53](https://aws.amazon.com/route53/) with a custom domain. I set the expiring cache on the S3 assets for a lengthy amount of time. I thought this was the way to go, and I especially liked uploading via the command line with the [AWS CLI](https://aws.amazon.com/cli/). But I soon discovered that the bandwidth costs for the web traffic on the media turned out to be way more than I anticipated. Just storing 30 GB of data on S3 doesn't cost much at all (maybe $2/month). But if the files are served up through web requests from a website, look out &mdash; it's a whole different cost tier. My bill was regularly about $30-35 a month.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/awss3bill.png" alt="Sample AWS bill" />

I stayed on AWS S3 for about 6 months because moving around 30 GB of media files is not easy, and I didn't have a better solution. (I didn't want to revert to Bluehost, for example.) I told myself that uploading images via the command line was saving me time, etc, and I wanted to become more familiar with the AWS ecosystem, but I knew that $30+/month for media hosting for a blog was not a long-term solution I wanted.

## Trying out Wasabi and the concept of egress

I remember hearing about another cloud storage provider called [Wasabi](https://wasabi.com/) (from the [This Week in Tech Podcast (TWIT)](https://twit.tv/) by Leo Laporte). Wasabi emphasizes how they don't charge for "egress," which refer to web requests to serve up the stored files. Wasabi explains,

> Most leading cloud providers allow their customers to input data into the cloud for free. However, when that data is retrieved from the cloud, these providers will then charge large fees; this is what’s known as a data egress....
>
> Egress charges have long been one of the biggest inhibitors to companies wanting to move their data into (and out of) the cloud, and that’s because these charges make it virtually impossible to predict how much money will actually be spent to effectively manage data.
>
> While all the other leading object storage vendors still charge their customers to retrieve data from storage, Wasabi has made it a point to eliminate all egress fees. By getting rid of all these and other hidden charges that are all-too-commonly associated with cloud storage, we’re helping to increase transparency for our customers, while eliminating unpredictable, frustrating, and complex access expenses. ([What Are Egress Charges?](https://wasabi.com/help/glossary-of-terms/egress-charges-definition/))

In other words, it's easy to get files in, but costly to get files out (e.g., load files with a web page request). I decided to give Wasabi a try.

*By the way, this post isn't sponsored or in any way influenced by any compensation from Wasabi.*

Interestingly enough, Wasabi uses the AWS CLI tools, so you use the same AWS CLI parameters to upload media to Wasabi as with S3. Also, Wasabi seems to be highly similar to the S3 bucket model with AWS, except that you also have an "[immutability](https://wasabi.com/blog/data-immutability-done-right/)" option, which means you can make it so that you can't accidentally delete all your files in a bucket.

At first, I didn't activate immutability, and then like an idiot I was browsing my uploaded files via the Wasabi GUI and I accidentally deleted all my files. (I thought I was selecting all files on one page of results, but it turns out the All check box selected all files on *all pages* of results.) Anyway, as I had only recently downloaded my files from AWS S3, I had a handy backup. After another solid night of uploading 30 GB files (btw, uploading via the command line is much faster than uploading via other methods, especially compared with the GUI), all files were back online. I then set my folders to immutable, which means if I want to overwrite a file, I can't. I just upload the same file with a different name.

Now to the big question. Is Wasabi cheaper? Maybe. My initial bills were certainly 80% cheaper:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/wasabisamplebill.png" alt="Sample Wasabi bill" />

But as I'll explain later, this might be a temporary anomaly as part of a grace period.

## Limitations with Wasabi

Note that Wasabi doesn't offer the multitude of other cloud services like AWS. Wasabi just offers the file storage with S3-like functionality, nothing more. You can't even map a custom domain to the bucket (as with Route 53), so my media URLs look like this: `https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/`. Also, all images are served from the us-west-1 location that I chose (I don't believe edge caching for higher-tier performance, as with AWS, is even available).

The loading time, if longer, isn't noticeable to me (after all, it's just a blog, so it's not a huge deal even if it's slightly slower). Additionally, the Wasabi GUI seems less stable and more amateur. (Sometimes I see text that says "Redirect token" when I hit a back button, for example.) Their help docs aren't great either (see this [example](https://wasabi-support.zendesk.com/hc/en-us/articles/115001910791-How-do-I-use-AWS-CLI-with-Wasabi-)).

However, given that I just need inexpensive file hosting, I'm willing to overlook these shortcomings.

## Uploading media through a CLI

I like that with Wasabi, I can still use the command line to upload files. (This command-line uploading of media is really what I wanted to focus on in this post.) In my Jekyll projects (my blog and API doc site use Jekyll), I created an `upload.sh` file that contains this:

```sh
aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idbwmedia.com/images/ --profile wasabi

echo '<a href=""><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/'$1
echo '" alt="" /></a>'
```

Notice the aws s3 CLI (`aws s3`). This `cp` command copies the file from `~/projects/idratherbewriting/images/$1` (where I store images locally) to my Wasabi bucket in the cloud: `s3://idbwmedia.com/images/`. The `--profile wasabi` uses my Wasabi profile's credentials rather than my other AWS credentials.

The `$1` accepts a parameter from the command line. When I type `. upload.sh somefile.png`, the `somefile.png` gets inserted into the `$1` variable.

Because I'm usually just uploading files to embed as images in a post, I use the `echo` return to print the HTML image tag back to me, with the filename inserted here at the `$1` position as well.

For some reason I had trouble installing Wasabi's required version of Python on my Macbook (I ran into conflicts with my Mac's system Python), so I ended up putting the Wasabi CLI into a [Python virtual environment](https://docs.python.org/3/library/venv.html). My real script looks like this:

```sh
myvenv
aws s3 cp ~/projects/idratherbewriting/images/$1 s3://idbwmedia.com/images/ --profile wasabi

echo '<a href=""><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/'$1
echo '" alt="" /></a>'
deactivate
```

`myvenv` is an alias in my `.bash_profile` that just activates the Python virtual environment:

```sh
alias myvenv='source /Users/tomjoht/myvenv/bin/activate'
```

The script then runs `deactivate` when finished. (Really, this virtual environment is not a necessary hack but something I included due to conflicts I encountered.) Here's a sample demo of uploading an image via the command line:

<iframe width="640" height="385" src="https://www.youtube.com/embed/0umiySDHwfc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The result:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/sample_image_cli_upload.png" alt="Sample image upload" />

One interesting thing I've noticed, as I examine costs for file hosting, is that the most expensive images on my site are the ad images in my sidebar. Those images get served with each page load, so they end up account for something like 25% of my egress bandwidth. A heavy file there translates into a larger financial impact with hosting (which was much more noticeable with AWS). At some point while on AWS S3, I considered enforcing a smaller file size with advertisers. At any rate, if you do have images that are part of your site's layout (e.g., subscribe buttons or banner images) and which load with each page load, make sure they are highly optimized.

## Understanding pricing tiers

Overall, I've only been using Wasabi for a couple of months. Based on the initial bill, it seems like it's a much less expensive hosting option. However, I believe I'm in an initial grace period only because I clearly don't fit within the free egress plan. Wasabi explains:

> * If your monthly downloads (egress) are less than or equal to your active storage volume, then your storage use case is a good fit for Wasabi’s free egress policy.
> * If your monthly downloads (egress) are greater than your active storage volume, then your storage use case is not a good fit for Wasabi’s free egress policy.
>
> For example, if you store 100 TB with Wasabi and download 100 TB or less within a monthly billing cycle, then your storage use case is a good fit for our free egress policy. If your monthly downloads exceed 100 TB, then your use case is not a good fit. ([Pricing FAQs](https://wasabi.com/cloud-storage-pricing/pricing-faqs/))

According to my egress utilization, my costs should be more than they are. My egress utilization for August was 354.6 GB, while the total storage in that same bucket was at the most about 37 GB. So admittedly, I don't understand why my egress is currently free (37 GB storage < 354.6 GB egress).

I reached out to Wasabi to ask why my egress was free given that my egress utilization is 354.6 GB, which is much more than the 37 GB of storage in the bucket (and is not a 1:1 ratio). They said,

> Free egress is a good use case for us when the model is 1:1 ratio of storage to monthly download amount. If your storage use case exceeds the guidelines of our free egress policy on a regular basis, we reserve the right to limit or suspend your account.
[Wasabi Pricing FAQs](https://wasabi-support.zendesk.com/hc/en-us/articles/360027020311-Wasabi-Pricing-FAQs?source=search)
>
> Many of our customers use CDN's if they intend to share objects and will exceed their storage volume otherwise.
> That's also better for their customers. Please see the details in these two KB articles:
[Can I use Wasabi to host my videos?](https://wasabi-support.zendesk.com/hc/en-us/articles/360000451052-Can-I-use-Wasabi-to-host-my-videos-?source=search)

So basically, at some future point in time, they could limit or suspend my account. The [Can I use Wasabi to host my videos?](https://wasabi-support.zendesk.com/hc/en-us/articles/360000451052-Can-I-use-Wasabi-to-host-my-videos-?source=search) page explains,

>  The business model with public cloud object storage is that egress traffic (i.e. downloads) from the storage service to the player location is generally chargeable on a per-GB basis*. The price is generally less than $.10 per GB but if you are doing many downloads and the files are large, this can result in some meaningful egress fee charges.  

A later follow-up from support makes it more clear that I'm violating the free egress policy:

> You are correct that you are above the threshold that we specify.
> We try to work with customers that exceed this and help them determine how they can configure their system (use of a CDN perhaps?) or if this is not a good use case for them.
> We'd prefer that you recognize that you are exceeding the expected threshold and rectify that.
> You are correct that if it continues, the system will flag that, and we will ultimately reach out to you or suspend your account.

If they revoke the free egress on my account and start charging $.10 per GB for egress, and my monthly utilization is 354.6 GB, then I think the cost would be around $35 &mdash; in that case, AWS S3 and Wasabi would be about the same. Actually, AWS would be less expensive.

However, if you think about it, Wasabi's 1:1 ratio about active storage volume to egress doesn't make much sense. If I'm violating the ratio by having 354 GB of egress for only 37 GB of storage, then I just need to upload some large files into my account to balance it out. The pricing tier allows me to store up to 1 TB of data for $5.99/month. Uploading a bunch of dummy files like this seems ridiculous and a waste of time for both me and Wasabi.

## Conclusion

If you don't have a high amount of site traffic, combining [Wasabi](https://wasabi.com/) ($6/month) with [GitHub Pages](https://pages.github.com/) (free) could be an inexpensive way to host a website. Additionally, you get the benefits of the CLI-based media upload.
