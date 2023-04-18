---
title: "Using AI tools to look up words and provide mini-poems to help remember their meaning"
categories:
- AI
keywords:
rebrandly: https://idbwrtng.com/aivocablookup
description: "I've been using AI to look up vocabulary terms. Not just to provide definitions, but to provide sample sentences, etymology, and a mini poem to help remember the meaning. It's fun and a lot faster than looking up words one by one. The most fun part is the poem, which is often delightful."
---

## Tip for constructing the prompt 

When you construct the prompt, consider formatting the request like a function. Define the pattern you want the AI to populate, then provide a list of terms that should take that pattern. Here's an example:

```
For each of the following vocabulary terms, provide the definition, sample sentence, etymology, and a short multi-line rhyming poem. This will help me learn the term's definition. Here are the words: [word 1, word 2, word 3, etc.]. 

Here's the pattern to populate:

--------------
[Word]:
**Definition:**
**Sample sentence:**
**Etymology:**
**Poem:**
-------------
```

This is basically a for-loop type command pattern. (I'm not saying to write the query as an actual for loop, only that this sort of thinking, of defining a pattern and asking it to complete the pattern with a list of items, works really well.)

It might take a bit of adjustment to get it right. I was using Bard for this. I initially asked Bard to make mnemonics for the words, but it wasn't good at mnemonics. Bar was, however, pretty good at writing cheesy poems, most of which sadly don't rhyme but still clarify the term well. ChatGPT was better at mnemonics but its poems were too high-brow. If I could have better described the poetry pattern I wanted, it would have helped.

Also, I had to limit the terms to about 10 at a time, due to length constraints. Then after each run, I pasted in new terms and said "Do the same with these terms." AI remembered the previous instruction.

## My list of terms 

Here's my list of terms. (BTW, these terms are from books I was reading at the time&mdash;*Geography of Nowhere* by James Kunstler and *The Art of Noticing* by Rob Walker. Some words I know but feel like they're worth collecting because they're cool words I could be using more frequently.)

<h3>carbuncle</h3>

* **Definition:** (n.) A painful, red, swollen, and inflamed skin infection that is caused by a group of infected hair follicles.
* **Etymology:** From Latin carbunculus, "little coal", diminutive of carbo, "coal".
* **Sample sentence:** The man had a carbuncle on his neck that was so painful he could barely turn his head.
* **Poem:**

```
A carbuncle is a painful sight,
It's red and swollen and full of spite,
It's caused by a group of infected hair follicles,
So be sure to keep your skin clean and free of follicles.
```

<h3>plutocracy</h3>

* **Definition:** (n.) A government in which the wealthy hold most of the power.
* **Etymology:** From Greek πλutocracy, "rule of the wealthy", from πλούτος **Definition:** (ploutos), "wealth", and κράτος **Definition:** (kratos), "power".
* **Sample sentence:** The United States is often accused of being a plutocracy, as the wealthy have a disproportionate amount of influence over the government.
* **Poem:**

```
A plutocracy is a government run by the rich,
They don't care about the poor, they only care about their cash,
They make all the decisions, and they always get their way,
So if you're not rich, you better start praying.
```

<h3>atelier</h3>

* **Definition:** (n.) A studio or workshop where an artist or craftsman works.
* **Etymology:** From French atelier, "workshop", from Old French atelier, "room", from Latin atelier, "workshop", from ateliāre, "to work at home".
* **Sample sentence:** The artist had his atelier in the attic of his house.
* **Poem:**

```
An atelier is a place where creativity and passion sparks,
It's where artists and craftsmen work,
To create beautiful things,
That will inspire others.
```

<h3>warren</h3>

* **Definition:** (n.) A colony of rabbits or other small animals that live together in a burrow.
* **Etymology:** From Old English wera, "burrow", from Proto-Germanic *wārō, "enclosure".
* **Sample sentence:** The farmer found a warren of rabbits in his field.
* **Poem:**

```
A warren is a place where rabbits dwell,
They live in burrows, underground, they're so well,
They're cute and they're cuddly, and they're sure to make you smile,
So if you see a warren, be sure to take a while.
```

<h3>gridiron</h3>

* **Definition:** (n.) A cooking grate made of metal bars that is used to cook food over an open fire.
* **Etymology:** From Old English grid, which means "griddle".
* **Sample sentence:** The chef cooked the steak on the gridiron.
* **Poem:**

```
A gridiron is a cooking grate,
It's made of metal bars, and it's great,
For cooking food over an open fire,
Like steak, chicken, or even a tire.
```

<h3>congeres</h3>

* **Definition:** (n.) A collection or mass of things that are gathered or piled together.
* **Etymology:** From the Latin word "congeries", which means "heap".
* **Sample sentence:** The congeres of people in the street made it difficult to move.
* **Poem:**

```
A congeres is a mass of things,
It can be people, animals, or even things,
It's a big pile of stuff,
And it's always a mess.
```

<h3>cutpurse</h3>

* **Definition:** (n.) A thief who steals from people's pockets.
* **Etymology:** From the Middle English words "cut" and "purse", which mean "to cut" and "money bag" respectively.
* **Sample sentence:** The cutpurse was able to steal the man's wallet without him even noticing.
* **Poem:**

```
A cutpurse is a thief,
They're sneaky and they're quick,
They'll steal your money right out of your pocket,
So be sure to keep your eyes peeled.
```

<h3>narcotize</h3>

* **Definition:** (v.) To make someone unconscious or insensitive to pain by using a drug.
* **Etymology:** From the Greek words "narke", which means "numbness", and "-ize", which is a suffix that means "to make".
* **Sample sentence:** The doctor used a narcotic to sedate the patient before surgery.
* **Poem:**

```
To narcotize is to make someone numb,
So they can't feel anything,
It's often used in medicine,
To help people relax or sleep.
```

<h3>effete</h3>

* **Definition:** (adj.) Weak, feeble, or exhausted.
* **Etymology:** From the Latin word "effeminatus", which means "made womanly".
* **Sample sentence:** The old man was so effete that he could barely walk.
* **Poem:**

```
An effete person is weak and feeble,
They're not strong or manly at all,
They might be tired or exhausted,
Or they might just be lazy.
```

<h3>eminent domain</h3>

* **Definition:** (n.) The right of a government to take private property for public use, with just compensation to the owner.
* **Etymology:** From the Latin words "eminens", which means "prominent", and "dominium", which means "ownership".
* **Sample sentence:** The government used eminent domain to take the farmer's land to build a new highway.
* **Poem:**

```
Eminent domain is a power that governments have,
To take private property for public use,
They have to pay the owner fair market value,
But they can still take the land, even if the owner doesn't want to sell.
```

<h3>byzantine</h3>

* **Definition:** (adj.) Complicated, intricate, or involved.
* **Etymology:** From the name of the Byzantine Empire, which was a complex and powerful empire that existed in the Middle East and southeastern Europe for over a thousand years.
* **Sample sentence:** The Byzantine bureaucracy was so Byzantine that it was difficult to get anything done.
* **Poem:**

```
Byzantine is a word that means complicated,
It's often used to describe things that are intricate or involved,
Like the Byzantine Empire,
Which was a complex and powerful empire that lasted for over a thousand years.
```

<h3>noisome</h3>

* **Definition:** (adj.) Offensively smelly or foul-smelling.
* **Etymology:** From the Middle English word "noyous", which means "harmful".
* **Sample sentence:** The noisome odor of the garbage dump was unbearable.
* **Poem:**

```
Noisome is a word that means smelly,
It's often used to describe things that are offensive or foul-smelling,
Like the noisome odor of the garbage dump,
Which is so strong that it makes you want to hold your nose.
```

<h3>macadam</h3>

* **Definition:** (n.) A type of road surface that is made from broken stones that are bound together with tar or asphalt.
* **Etymology:** Named after John Loudon McAdam, a Scottish engineer who invented it in the early 19th century.
* **Sample sentence:** The road was made of macadam, which made it very smooth to drive on.
* **Poem:**

```
Macadam is a type of road surface,
It's made from broken stones that are bound together with tar or asphalt,
It's a very smooth surface,
And it's very durable.
```

<h3>legerdemain</h3>

* **Definition:** (n.) A type of land ownership in which the owner has the right to use the land for grazing or other purposes, but does not have the right to sell it.
* **Etymology:** From the French words "leger", which means "light", and "domaine", which means "domain".
* **Sample sentence:** The farmer had a legerdemain on the land that he used to graze his cattle.
* **Poem:**

```
Legerdemain is a word that means grazing,
It's a type of land ownership,
Where the owner has the right to use the land,
But not to sell it.
```

<h3>scion</h3>

* **Definition:** (n.) A descendant of a noble or important family.
* **Etymology:** From the Latin word "scius", which means "to know".
* **Sample sentence:** The scion of the wealthy family was expected to go to college and become a doctor.
* **Poem:**

```
A scion is a descendant,
Of a noble or important family,
They are expected to do great things,
And to uphold the family name.
```

<h3>cretinous</h3>

* **Definition:** (adj.) Mentally deficient or feeble-minded.
* **Etymology:** From the name of the island of Crete, which was once thought to be the home of the mentally disabled.
* **Sample sentence:** The doctor diagnosed the child as being cretinous.
* **Poem:**

```
A cretin is someone who is mentally deficient,
They may be feeble-minded or slow,
They may have difficulty learning,
And they may need special care.
```

<h3>decrepitating</h3>

* **Definition:** (adj.) Falling apart or crumbling.
* **Etymology:** From the Latin words "de", which means "down", and "crepare", which means "to creak".
* **Sample sentence:** The old building was decrepit and in danger of falling down.
* **Poem:**

```
A decrepit building is falling apart,
It's crumbling and creaking,
It's in danger of falling down,
And it needs to be repaired or replaced.
```

<h3>verboten</h3>

* **Definition:** (adj.) Forbidden or prohibited.
* **Etymology:** From the German word "verboten", which means "forbidden".
* **Sample sentence:** The sign said that swimming was verboten in the lake.
* **Poem:**

```
Something that is verboten is forbidden,
It's not allowed,
It's prohibited,
And it's not to be done.
```

<h3>pastorale</h3>

* **Definition:** (n.) A painting, poem, or piece of music that depicts rural life.
* **Etymology:** From the Italian word "pastorale", which means "of or relating to shepherds".
* **Sample sentence:** The painter created a pastorale of a farmer working in his field.
* **Poem:**

```
A pastorale is a painting, poem, or piece of music,
That depicts rural life,
It's often peaceful and serene,
And it can be a beautiful reminder of the simple things in life.
```

<h3>mendacious</h3>

* **Definition:** Lying or untruthful.
* **Etymology:** From the Latin word "mendax", which means "lying".
* **Sample sentence:** The politician was mendacious and would often lie to the public.
* **Poem:**

```
A mendacious person is a liar,
They are untruthful and deceitful,
They may lie for personal gain,
Or they may lie to avoid getting in trouble.
```

<h3>vertiginous</h3>

* **Definition:** Causing or characterized by dizziness or vertigo.
* **Etymology:** From the Latin words "vertere", which means "to turn", and "ginnus", which means "to bend".
* **Sample sentence:** The view from the top of the cliff was so vertiginous that I felt like I was going to faint.
* **Poem:**

```
A vertiginous view is one that causes dizziness,
It can be so high up that it makes you feel like you're going to fall,
It can be so steep that it makes you feel like you're going to slide down,
And it can be so dizzying that you feel like you're going to be sick.
```

<h3>gob smacked </h3>

* **Definition:** (adj.) Stunned or amazed.
* **Etymology:** From the British slang term "gob", which means "mouth", and the verb "to smack", which means "to hit".
* **Sample sentence:** The man was gob smacked when he won the lottery.
* **Poem:**

```
Gob smacked is a word to say,
When you're so surprised, you can't say anything,
Your mouth is open wide,
And your eyes are wide as can be,
You're just in shock,
And you don't know what to do.
```

<h3>viscid</h3>

* **Definition:** (adj.) Thick and sticky.
* **Etymology:** From the Latin word "viscum", which means "birdlime".
* **Sample sentence:** The mud was so viscid that it was difficult to walk through.
* **Poem:**

```
Viscid is a word to describe,
Something that's thick and sticky,
Like mud or glue,
It's hard to move through,
And it can be hard to get off,
Once it's on you.
```

<h3>fractious</h3>

* **Definition:** (adj.) Easily annoyed or upset.
* **Etymology:** From the Latin word "fractus", which means "broken".
* **Sample sentence:** The child was very fractious and would often throw tantrums.
* **Poem:**

```
Fractious is a word to describe,
Someone who is easily annoyed or upset,
They're always on edge,
And they're quick to anger,
They're hard to deal with,
And they can be a real pain.
```

<h3>squadrous </h3>

* **Definition:** (adj.) Square or blocky.
* **Etymology:** From the Latin word "quadratus", which means "square".
* **Sample sentence:** The building was very squadrous and lacked any kind of architectural flair.
* **Poem:**

```
Squadrous is a word to describe,
Something that's square or blocky,
It's not very attractive,
And it's not very stylish,
It's just plain and boring,
And it's not very interesting.
```

<h3>colossus </h3>

* **Definition:** (n.) A gigantic statue or structure.
* **Etymology:** From the Greek word "kolossos", which means "giant".
* **Sample sentence:** The Colossus of Rhodes was one of the Seven Wonders of the Ancient World.
* **Poem:**

```
Colossus is a word to describe,
A gigantic statue or structure,
It's so large,
It's almost unbelievable,
It's a marvel of engineering,
And it's a testament to the power of man.
```

<h3>debouch **Definition:**  </h3>

* **Definition:** (v.) To flow out or emerge from a confined space.
* **Etymology:** From the French word "débouch", which means "to emerge".
* **Sample sentence:** The river debouched into the sea.
* **Poem:**

```
Debouch is a word to describe,
The act of flowing out or emerging,
It's like a river flowing out of a canyon,
Or a bird flying out of a cage,
It's a sense of freedom,
And a new beginning.
```

<h3>fetishize </h3>

* **Definition:** (v.) To regard or treat with excessive or irrational devotion, reverence, or awe.
* **Etymology:** From the Portuguese word "feitiço", which means "charm" or "spell".
* **Sample sentence:** The man fetishized his car and spent hours every day polishing it.
* **Poem:**

```
Fetishize is a word to describe,
The act of treating something with excessive or irrational devotion,
It's like a person who is obsessed with their car,
Or a person who is addicted to gambling,
It's a sense of need,
And a lack of control.
```

<h3>cockamimie </h3>

* **Definition:** (adj.) Foolish or ridiculous.
* **Etymology:** From the British slang term "cockamimied", which means "confused".
* **Sample sentence:** The man's cockamimie plan to get rich quick was doomed to failure.
* **Poem:**

```
Cockamimie a word that means "all mixed up",
Like a puzzle with all the pieces jumbled,
Or a room that's been turned upside down,
Or a day that's gone completely wrong.
```

<h3>mansard </h3>

* **Definition:** (n.) A type of roof that has two slopes on each side, the lower slope being steeper than the upper slope.
* **Etymology:** Named after François Mansart, a French architect who popularized the style in the 17th century.
* **Sample sentence:** The house had a mansard roof that gave it a distinctive look.
* **Poem:**

```
A mansard roof is a type of roof,
It has two slopes on each side,
The lower slope is steeper than the upper slope,
And it gives the house a distinctive look.
```

<h3>outré</h3>

*  **Definition:** (adj.) Extravagant or bizarre.
* **Etymology:** From the French word "outé", which means "beyond".
* **Sample sentence:** The woman's outfit was so outré that it turned heads wherever she went.
* **Poem:**

```
Outré is a word to describe,
Something that is extravagant or bizarre,
It's over-the-top,
And it's not for everyone,
But it can be very eye-catching.
```

<h3>oleomargarine</h3>

*  **Definition:** (n.) A butter substitute made from vegetable oils.
* **Etymology:** From the Greek words "oleum", which means "oil", and "margaron", which means "pearl".
* **Sample sentence:** The cook used oleomargarine instead of butter in the recipe.
* **Poem:**

```
Oleomargarine is a butter substitute,
It's made from vegetable oils,
It's not as good as butter,
But it's a lot cheaper,
And it's still a good source of fat.
```

<h3>cavalcade </h3>

* **Definition:** (n.) A procession of people or vehicles, especially one that is impressive or impressive.
* **Etymology:** From the Italian word "cavalcata", which means "a ride on horseback".
* **Sample sentence:** The cavalcade of cars made its way down the street.
* **Poem:**

```
A cavalcade is a procession,
Of people or vehicles,
It's often impressive,
And it can be very grand,
It's a sight to behold.
```

<h3>deracinated </h3>

* **Definition:** (adj.) Uprooted or alienated from one's culture or society.
* **Etymology:** From the Latin words "de", which means "down", and "radix", which means "root".
* **Sample sentence:** The refugees were deracinated and had to start their lives over in a new country.
* **Poem:**

```
Deracinated is a word to describe,
Someone who has been uprooted,
They've been torn away from their culture,
And they're struggling to find their place in the world,
It's a very difficult experience.
```

<h3>concomitant </h3>

* **Definition:** (adj.) Occurring together at the same time.
* **Etymology:** From the Latin words "con", which means "with", and "comitans", which means "accompanying".
* **Sample sentence:** The symptoms of the disease were concomitant with a fever.
* **Poem:**

```
Concomitant is a word to describe,
Something that occurs together,
It's often used to describe symptoms,
That occur together with a disease,
It's a very important word in medicine.
```

<h3>melange </h3>

* **Definition:** (n.) A mixture or blend of different things.
* **Etymology:** From the French word "mélange", which means "mixture".
* **Sample sentence:** The melange of flavors in the dish was delicious.
* **Poem:**

```
A melange is a mixture,
Of different things,
It can be of flavors,
Or of colors,
Or of anything else you can think of.
```

<h3>vituperate </h3>

* efinition: (v.) To scold or criticize angrily.
* **Etymology:** From the Latin words "vituperare", which means "to scold", and "vituperator", which means "scolder".
* **Sample sentence:** The politician was vituperated by his opponents for his handling of the economy.
* **Poem:**

```
To vituperate is to scold,
To criticize angrily,
It's often used in politics,
But it can be used in any situation,
When someone is being very critical.
```

<h3>melancholia </h3>

* **Definition:** (n.) A prolonged feeling of sadness and despondency.
* **Etymology:** From the Greek words "melas", which means "black", and "khole", which means "bile".
* **Sample sentence:** The woman suffered from chronic melancholy and was often withdrawn and sullen.
* **Poem:**

```
Melancholia is a feeling,
Of sadness and despondency,
It's a prolonged feeling,
That can be very debilitating.
```

<h3>banana republic </h3>

* **Definition:** (n.) A small, politically unstable country with an economy based on agriculture.
* **Etymology:** The term "banana republic" was coined in the 19th century to describe countries in Central America that were dominated by the United Fruit Company, a major producer of bananas.
* **Sample sentence:** The country was a banana republic and was often exploited by foreign powers.
* **Poem:**

```
A banana republic is a country,
That is small and politically unstable,
It's economy is based on agriculture,
And it is often exploited by foreign powers.
```

<h3>potentate </h3>

* **Definition:** (n.) A powerful ruler or leader.
* **Etymology:** From the Latin word "potens", which means "powerful".
* **Sample sentence:** The potentate ruled his country with an iron fist.
* **Poem:**

```
A potentate is a ruler,
Who is very powerful,
They have a lot of control,
And they can be very cruel.
```

<h3>concoct</h3>

* **Definition:** (v.) To invent or create something, especially something new or unusual.
* **Etymology:** From the Latin word "concoquere", which means "to cook together".
* **Sample sentence:** The scientist concocted a new formula for a medicine.
* **Poem:**

```
To concoct is to create,
Something new or unusual,
It can be a medicine,
Or a new way of doing things.
```

<h3>delirium tremens </h3>

* **Definition:** (n.) A severe form of alcohol withdrawal characterized by tremors, hallucinations, and confusion.
* **Etymology:** From the Latin words "delirium", which means "madness", and "tremens", which means "trembling".
* **Sample sentence:** The man was suffering from delirium tremens after a long period of heavy drinking.
* **Poem:**

```
Delirium tremens is a condition,
That is caused by alcohol withdrawal,
It can be very serious,
And it can even be fatal.
```

<h3>augured </h3>

* **Definition:** (v.) To foretell or predict something, especially something bad.
* **Etymology:** From the Latin word "augurium", which means "divination".
* **Sample sentence:** The owl augured ill for the upcoming battle.
* **Poem:**

```
To augur is to predict,
Especially something bad,
It can be done by looking at the stars,
Or by reading tea leaves.
```

<h3>habitué </h3>

* **Definition:** (n.) A person who is a regular visitor to a particular place, such as a bar or restaurant.
* **Etymology:** From the French word "habitué", which means "regular".
* **Sample sentence:** The man was a habitué of the bar and knew all the regulars by name.
* **Poem:**

```
A habitué is a person,
Who is a regular visitor,
They often go to the same place,
And they know everyone there.
```

<h3>raiment </h3>

* **Definition:** (n.) Clothes or clothing.
* **Etymology:** From the Old English word "raiment", which means "clothes".
* **Sample sentence:** The woman wore a beautiful raiment of silk and lace.
* **Poem:**

```
Raiment is a word for clothes,
It can be used to describe,
Anything from a simple dress,
To a fancy suit.
```

<h3>incumbents </h3>

* **Definition:** (n.) People who hold a particular position or office.
* **Etymology:** From the Latin word "incumbent", which means "lying on".
* **Sample sentence:** The incumbents were re-elected by a landslide.
* **Poem:**

```
Incumbents are people,
Who hold a particular position,
They may be elected,
Or they may be appointed.
```

<h3>verisimilitude </h3>

* **Definition:** (n.) The appearance of truth or reality.
* **Etymology:** From the Latin words "verus", which means "true", and "similitudo", which means "resemblance".
* **Sample sentence:** The novel had a verisimilitude that made it seem like a true story.
* **Poem:**

```
Verisimilitude is a word,
That means the appearance of truth,
It can be found in a novel,
Or in a work of art.
It's the feeling that something is real,
Even though you know it's not,
It's the magic of storytelling,
And the power of the human imagination.
```

<h3>incisive </h3>

* **Definition:** (adj.) Sharp or keen in thought or expression.
* **Etymology:** From the Latin word "incisus", which means "cut into".
* **Sample sentence:** The lawyer's argument was incisive and persuasive.
* **Poem:**

```
Incisive is a word,
That means sharp or keen,
It can be used to describe a thought,
Or an expression.
It's the kind of thought that cuts through to the heart of the matter,
And the kind of expression that leaves a lasting impression,
It's the mark of a true master,
In any field.
```

<h3>acrimony </h3>

* **Definition:** (n.) Bitterness or hostility.
* **Etymology:** From the Latin word "acrimonious", which means "bitter".
* **Sample sentence:** The two men exchanged acrimonious words during the debate.
* **Poem:**

```
Acrimony is a word,
That means bitterness or hostility,
It's the kind of feeling that can ruin a relationship,
Or even a country.
It's the kind of feeling that comes from anger,
And resentment,
And it's the kind of feeling that's hard to let go of,
Once it takes hold.
```

<h3>lumpenproletariat </h3>

* **Definition:** (n.) The lowest social class, consisting of the unemployed, homeless, and criminals.
* **Etymology:** From the German words "lumpen", which means "rag", and "proletariat", which means "working class".
* **Sample sentence:** The lumpenproletariat was a major source of support for the revolution.
* **Poem:**

```
Lumpenproletariat is a word,
That refers to the lowest social class,
It's made up of the unemployed,
The homeless,
And the criminals.
They're the people who are forgotten,
And the people who are left behind,
They're the people who are angry,
And they're the people who are desperate,
And they're the people who are most likely to be exploited.
```

<h3>concomitant </h3>

* **Definition:** (adj.) Occurring together at the same time.
* **Etymology:** From the Latin words "con", which means "with", and "comitans", which means "accompanying".
* **Sample sentence:** The symptoms of the disease were concomitant with a fever.
* **Poem:**

```
Concomitant is a word,
That means occurring together at the same time,
It can be used to describe symptoms,
Or events.
It's the kind of word that's used in medical textbooks,
And in news reports,
It's the kind of word that tells you,
That two things are related.
```

<h3>somatosensation </h3>

* **Definition:** (n.) The sense of touch, which includes the sensations of pressure, temperature, pain, and vibration.
* **Etymology:** From the Greek words "soma", which means "body", and "sensus", which means "sense".
* **Sample sentence:** The patient's somatosensation was impaired after the stroke.
* **Poem:**

```
Somatosensation is a word,
That refers to the sense of touch,
It's the sense that allows us to feel,
The world around us.
It's the sense that allows us to know,
Where our body is in space,
And it's the sense that allows us
```

<h3>picayune </h3>

* **Definition:** (adj.) Small, insignificant, or worthless.
* **Etymology:** From the French word "picaillon", which means "small coin".
* **Sample sentence:** The man was paid a picayune sum for his work.
* **Poem:**

```
Picayune is a word,
That means small or insignificant,
It can be used to describe a person,
Or a thing.
It's the kind of word,
That's used to dismiss something,
To make it seem like it's not worth anything.
```

<h3>tchotchkes </h3>

* **Definition:** (n.) Small, decorative objects, especially those of little value.
* **Etymology:** From the Yiddish word "tchotchke", which means "trinket".
* **Sample sentence:** The woman's house was filled with tchotchkes from her travels.
* **Poem:**

```
Tchotchkes are small, decorative objects,
They're often of little value,
But they can be very charming,
And they can add a touch of personality to a room.
They're the kind of things,
That you pick up on your travels,
And they're a way to remember,
The places you've been.
```

<h3>vaudeville </h3>

* **Definition:** (n.) A type of variety show that typically features music, comedy, and dance.
* **Etymology:** From the French word "vaudeville", which means "village song".
* **Sample sentence:** The vaudeville show was a hit with the audience.
* **Poem:**

```
Vaudeville is a type of show,
That's full of music, comedy, and dance,
It's a great way to spend an evening,
And it's sure to put a smile on your face.
It's the kind of show,
That everyone can enjoy,
From young to old,
And it's a great way to forget about your troubles.
```

<h3>vagaries </h3>

* **Definition:** (n.) Unpredictable or erratic changes in behavior or thought.
* **Etymology:** From the Latin word "vagari", which means "to wander".
* **Sample sentence:** The patient's vagaries made it difficult to care for him.
* **Poem:**

```
Vagaries are unpredictable or erratic changes,
In behavior or thought,
They can be caused by a number of things,
Such as mental illness,
Or drug use.
They can make it difficult to live a normal life,
And they can be very disruptive,
If you or someone you know,
Is experiencing vagaries,
It's important to seek help.
```

<h3>haute </h3>

* **Definition:** (adj.) Of high quality or fashion; elegant.
* **Etymology:** From the French word "haut", which means "high".
* **Sample sentence:** The woman was wearing a haute couture gown.
* **Poem:**

```
Haute is a word,
That means high quality or fashion,
It's often used to describe clothes,
But it can also be used to describe other things,
Such as food,
Or art.
It's the kind of word,
That's used to describe something,
That's at the top of its game,
It's the best of the best,
And it's something to aspire to.
```

## Conclusion

I'm not sure of the poems will help me remember the meanings. Perhaps mnemonics are better and something I might try in the future. I also know that there are probably errors in the definitions and samples, but they're good enough for the time saved.