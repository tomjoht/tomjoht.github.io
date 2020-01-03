---
layout: post
title: Add WordPress 3.0 Navigation System to Your Site
date: 2010-07-12 01:06:13.000000000 -07:00
categories:
- technical-writing
- wordpress
tags:
- justin tadlock
- navigation
- tutorials
- wordpress screencasts
---
<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="640" height="385" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="https://www.youtube.com/v/nHxD3W6BOQw&amp;hl=en_US&amp;fs=1;hd=1" /><param name="allowfullscreen" value="true" /><embed type="application/x-shockwave-flash" width="640" height="385" src="https://www.youtube.com/v/nHxD3W6BOQw&amp;hl=en_US&amp;fs=1;hd=1" allowscriptaccess="always" allowfullscreen="true"></embed></object></p>

Before WordPress 3.0, one of the frustrations with WordPress was configuring the navigation menu when you wanted to combine pages, categories, and URLs. The new navigation system in WordPress 3.0 solves this problem, because it allows you to create a menu by dragging and dropping almost any type of link. But just upgrading WordPress to 3.0 won't automatically give you the new navigation system. You have to modify your theme with the new navigation template tags. I'll walk you through this in this tutorial.

### 1\. First, register the new menu in your theme functions file.

a. If you have just one navigation menu in your theme, copy the first registration snippet in the tutorial notes.

Registration code snippet 1:

```php
add\_action( 'init', 'register\_my\_menu' ); function register\_my\_menu() { register\_nav\_menu( 'primary-menu', \_\_( 'Primary Menu' ) ); }
```

If you have two navigation menus, copy the second registration code snippet.

Registration code snippet 2:

```php
add\_action( 'init', 'register\_my\_menus' ); function register\_my\_menus() { register\_nav\_menus( array( 'upper-menu' => \_\_( 'Upper Menu' ), 'lower-menu' => \_\_( 'Lower Menu' ), ) ); }
```

b. Now go to **Appearance > Editor** and click the **Theme Functions (functions.php)** file. Insert the code near the bottom, right before the closing ?> tag. Then click **Update File**.

### 2\. Now you need to replace your old menu template tag with the new one.

a. Your navigation menu is usually in your header.php file. Look for wp\_list\_pages or wp\_list\_cats. Either delete it or comment it out.

b. If you have just one menu, add the first navigation menu template tag in the tutorial notes.

Navigation menu template tag 1:

```php
'primary-menu' ) ); ?>
```

If you have multiple menus, add the second navigation menu template tag in the tutorial notes.

Navigation menu template tag 2:

```php
'upper-menu' ) ); ?> and 'lower-menu' ) ); ?>
```

c. Then click **Update File**.

### 3\. Now navigate to Appearance > Menus in your theme and create the menus you want.

You can see that the theme location we specified appears in the upper left corner, in the Theme Locations section.

a. To create a new menu, type a new menu name and click **Create Menu**. When finished, click **Save Menu**.

b. Now select that menu in the **Theme Locations** section and save it.

c. Now refresh your theme to see the changes.

### Additional References

For the full function reference in the WordPress Codex, see [wp\_nav\_menu](http://codex.wordpress.org/Function_Reference/wp_nav_menu).

For an excellent description of the new navigation template tag, see [Goodbye, headaches, Hello, menus!](http://justintadlock.com/archives/2010/06/01/goodbye-headaches-hello-menus) from Justin Tadlock.
