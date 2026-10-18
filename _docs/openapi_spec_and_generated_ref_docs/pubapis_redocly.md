---
title: "Redocly tutorial -- authoring and publishing API docs with Redocly's command-line tools"
permalink: learnapidoc/pubapis_redocly.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.9
section: restapispecifications
path1: learnapidoc/restapispecifications.html
last-modified: 2026-10-17
---

{% include coffeeshopbook.html %}

[Redocly](https://redocly.com/) provides a variety of tools for working with API docs. Using Redocly's command-line tools, you can split the OpenAPI definition into many sub-files, and then later bundle up the discrete files into a single file during the publishing stage. You can generate your docs into one of the most attractive outputs available for REST API docs, including integration with conceptual topics as well. Redocly also offers more robust developer portals and SaaS offerings that cover the full authoring and publishing lifecycle.

* TOC
{:toc}

*Note that Redocly is one of the sponsors of my site.*

## Background about Redocly's approach to simplifying the author experience with OpenAPI

Before Redocly became Redocly, the team worked on a product called [Rebilly](https://www.rebilly.com/docs/) that included a 22,000 line OpenAPI definition file. Working in such a long file and authoring in YAML or JSON was especially challenging.  Not only was maneuvering in a single massive file difficult, one small indentation error would require them to constantly troubleshoot syntax issues. (The single YAML file for all OpenAPI definition elements was analogous to software developers storing all code for an application in a single file &mdash; an unthinkable way of working with code.)

When Redocly innovated on their approach to simplifying OpenAPI spec development, instead of putting a graphical user interface (GUI) on top of the OpenAPI code and requiring users to write the OpenAPI definition in forms, menus, and other widgets, Redocly decided on a more docs-as-code approach that aligns with the developer audience.

Redocly developed command-line tools to split the OpenAPI definition into smaller files to make it easier to work with. Files are stored as separate files and referenced through JSON reference tag (`$ref`) in the main OpenAPI file. Working in smaller files reduces the likelihood of syntax issues and other formatting errors. It also makes it easier to focus on the content.

{% include image_ad_right.html %}

The CLI tools also let you check your OpenAPI definition against a ruleset to ensure you're following best practices. You can configure the ruleset with different levels of strictness, either including or ignoring optional best practices in the OpenAPI specification. This linting lets you identify issues in your OpenAPI definition that might not technically be errors but would better if included.

{% include random_ad4.html %}

When you're ready to publish your OpenAPI definition, you can also use a command line tool to bundle the small files up into a single file again. 

Overall, Redocly's approach to simplifying the author experience with OpenAPI is based on the idea that API documentation should be treated as code. This means that it should be written in a plain text format, such as Markdown, and stored in a version control system, such as Git. This approach has a number of benefits, including:  

* It makes it easier for developers and technical writers to collaborate on API documentation.  
* It makes it easier to track changes to API documentation and roll back to previous versions if necessary.  
* It makes it easier to automate the process of building and deploying API documentation.  

## Overview of Redocly products

Redocly has a variety of products, so let's first clarify these tools before diving more deeply into the tutorial.

<table>
<col width = "25%">
<col width = "45%">
<col width = "30%">
<thead>
 <tr>
   <th>Product</th>
   <th>Description</th>
   <th>Example Use Case</th>
 </tr>
 </thead>
 <tbody>
 <tr>
   <td><a href="https://redocly.com/redoc">Redoc</a></td>
   <td>API documentation product that generates interactive documentation from your OpenAPI definition. Includes an interactive API client with a three-panel layout for navigation, documentation, and examples. Supports OpenAPI 3.1, 3.0 and Swagger 2.0.</td>
   <td>Create a visually appealing and interactive API reference for your users</td>
 </tr>
 <tr>
   <td><a href="https://redocly.com/redocly-cli">Redocly CLI</a></td>
   <td>Command-line tool for working with OpenAPI descriptions and API lifecycle operations including linting, enhancement, and bundling. Automates API guidelines and documentation generation.</td>
   <td>Lint your OpenAPI definition for potential errors and inconsistencies</td>
 </tr>
 <tr>
   <td><a href="https://redocly.com/reef">Reef</a></td>
   <td>Catalog and scorecard offering for organizing and monitoring large sets of APIs for internal audiences.</td>
   <td>Create an API catalog that allows internal teams to easily discover and reuse APIs</td>
 </tr>
 <tr>
   <td><a href="https://redocly.com/revel">Revel</a></td>
   <td>Developer portal for external audiences with Markdoc integration, multi-product documentation, versioning and localization.</td>
   <td>Build a developer portal that showcases API documentation and provides interactive tutorials</td>
 </tr>
 <tr>
   <td><a href="https://redocly.com/reunite">Reunite</a></td>
   <td>SaaS platform with online editor, webview and build previews, pull requests with visual/code reviews, and external Git integration.</td>
   <td>Streamline API documentation workflow and facilitate collaboration between writers and developers</td>
 </tr>
 <tr>
   <td><a href="https://redocly.com/realm">Realm</a></td>
   <td>Unified platform that includes Redoc, Revel, and Reef for managing all API documentation needs.</td>
   <td>Manage your entire API lifecycle in one central location</td>
 </tr>
 </tbody>
</table>

This article will focus mostly on the authoring experience working with the OpenAPI definition using the command line tools. For more details about Redocly's Developer Portal and Workflows product, see the Products menu on [Redocly's site](https://redocly.com). 

## Redocly CLI Walkthrough tutorial

This tutorial will give you a sense of how the Redocly CLI tools work and how to publish the OpenAPI using Redoc. You'll break up an OpenAPI file, make some changes, bundle it back up, and then publish it with Redoc. The tutorial has the following sections:

  - [1. Install the prerequisites](#prerequisites)
  - [2. Break up an OpenAPI file](#break_openapi)
  - [3. Check your OpenAPI definition against rules](#check_rules)
  - [4. Preview the Redoc output](#preview_output)
  - [5. Bundle up the OpenAPI definition into a single file](#bundle)
  - [6. Combine conceptual docs with reference docs](#conceptual_content)
  - [7. Explore additional features](#explore_premium)
  - [8. Publish the reference output](#build)

The sections aren't necessarily sequential, but they proceed through Redocly's tools in a logical way to become familiar with different aspects of the products. Also, the tutorial uses a sample OpenAPI definition related to the OpenWeatherMap API (used elsewhere in the course). Also, the instructions were written using a Mac. There might not be any differences with Windows, but note that Windows wasn't used here.

{: .note}
This tutorial is a brief exposure to Redocly's tools only. For more comprehensive documentation, see [Redocly's documentation](https://redocly.com/docs/).

### 1. Install the prerequisites {#prerequisites}

Before you can work with the Redocly CLI tools, you need to install them. [Node.js](https://nodejs.org/en/) is a prerequisite. Redocly CLI version 2 requires Node.js 20.19.0 or later (or 22.12.0 or later).

1. [Install the Redocly CLI](https://redocly.com/docs/cli/installation):

   ```bash
   npm i -g @redocly/cli@latest
   ```

    If you get a permissions error, change npm's default directory:

    ```bash
    mkdir ~/.npm-global
    npm config set prefix '~/.npm-global'
    ```

    Then add this to your `~/.bash_profile` (or `~/.zshrc` if you're using zsh):

    ```bash
    export PATH=~/.npm-global/bin:$PATH
    ```

2. Verify the installation by checking the version:

   ```bash
   redocly --version
   ```

For more detailed installation options, including Docker installation, see [Redocly's installation documentation](https://redocly.com/docs/cli/installation/).

{: .tip}
If you're starting a new API documentation project, you might want to use the [openapi-starter](https://github.com/Redocly/openapi-starter) template, which provides a pre-configured project structure. You can clone it or use it as a template on GitHub. However, in this tutorial, we'll use the OpenWeatherMap OpenAPI file that we've been using in other places in this course.

### 2. Break up an OpenAPI file {#break_openapi}

In this step, you'll break up an existing OpenAPI file into smaller files.

1.  Download the [openapi_openweathermap.yml](https://idratherbewriting.com/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml) file.

    Right-click the file and choose **Save Link As**. Save it in a folder called `redocly_project` in a convenient location. This OpenAPI definition is a small OpenAPI 3.1 file for one API in the [OpenWeatherMap API](https://openweathermap.org/api). Note that you can use another OpenAPI definition in this tutorial if you prefer. There's nothing special about this file &mdash; it just gives us an OpenAPI definition to work with.

2.  Open a terminal, browse to your `redocly_project` directory, and run the split command:

    ```bash
    redocly split openapi_openweathermap.yml --outDir openapi
    ```

    This command splits your OpenAPI file into smaller files inside the `openapi` directory.

3.  In a text editor (such as Visual Studio Code), open the `redocly_project` folder and browse the contents.

    The folder structure will look something like this:

    ```
    └── redocly_project
        ├── openapi
        │   ├── components
        │   │   ├── parameters
        │   │   │   ├── id.yml
        │   │   │   ├── lang.yml
        │   │   │   ├── lat.yml
        │   │   │   ├── lon.yml
        │   │   │   ├── mode.yml
        │   │   │   ├── q.yml
        │   │   │   ├── units.yml
        │   │   │   └── zip.yml
        │   │   └── schemas
        │   │       ├── 200.yml
        │   │       ├── Clouds.yml
        │   │       ├── Coord.yml
        │   │       ├── Main.yml
        │   │       ├── Rain.yml
        │   │       ├── Snow.yml
        │   │       ├── Sys.yml
        │   │       ├── Weather.yml
        │   │       └── Wind.yml
        │   ├── openapi.yml
        │   └── paths
        │       └── weather.yml
        └── openapi_openweathermap.yml
    ```

    The original OpenAPI definition remains unchanged as `openapi_openweathermap.yml`. Redocly has extracted each of the paths, parameters, schemas, and other elements into individual files inside the `openapi` folder.

    The new `openapi.yml` file in the `openapi` directory contains references to all the extracted files. For example:

    ```yaml
    ...
    paths:
      /weather:
        $ref: paths/weather.yml
    ...
    ```

    The `weather` path is now stored in `openapi/paths/weather.yml`. When you open this `weather.yml` file, you'll see that its parameters are also stored in external files:

    ```yaml
    ...
    parameters:
      - $ref: ../components/parameters/q.yml
      - $ref: ../components/parameters/id.yml
      - $ref: ../components/parameters/lat.yml
      - $ref: ../components/parameters/lon.yml
      - $ref: ../components/parameters/zip.yml
      - $ref: ../components/parameters/units.yml
      - $ref: ../components/parameters/lang.yml
      - $ref: ../components/parameters/mode.yml
    ...
    ```

A few important points about working with split files:

- The `$ref` syntax used to reference external files is standard in OpenAPI, but not all tools support working with split files.
- When generating API documentation, you'll typically need to bundle the files back into a single file (we'll cover this later).

{: .tip}
You can customize how files are split using options like `--separator` to control path separators. See the [split command documentation](https://redocly.com/docs/cli/commands/split/) for more details.

{% include ads.html %}

### 3. Check your OpenAPI definition against rules {#check_rules}

Redocly lets you run a linter against your OpenAPI definition to check for best practices. In this step, you'll explore the linting capabilities.

1.  First, create a `redocly.yaml` configuration file in your `redocly_project` folder with these basic settings:

    ```yaml
    extends:
      - recommended

    apis:
      main@v1:
        root: openapi/openapi.yml
    ```

    This configuration uses Redocly's recommended ruleset for linting. It also points to your main OpenAPI file using the proper structure. (Note that the file name is `redocly.yaml`. Older versions of Redocly CLI also accepted `.redocly.yaml`, but version 2 doesn't look for that name by default.)

    {: .tip}
    See [Configuration file](https://redocly.com/docs/cli/configuration/) for more configuration options.

2.  In a terminal prompt, `cd` to your `redocly_project` folder.

3.  Run the linter:

    ```bash
    redocly lint
    ```

    The command checks your OpenAPI definition against the rules. A successful validation looks like this:

    ```bash
    validating openapi/openapi.yml using lint rules for api 'main@v1'...
    openapi/openapi.yml: validated in 70ms

    Woohoo! Your API description is valid. 🎉
    ```

4.  To see how the linter identifies issues, let's introduce an error. Open your `openapi/openapi.yml` file and remove the `license` object:

    ```yaml
    license:
      name: CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)
      url: https://openweathermap.org/price
    ```

5.  Run the linter again:

    ```bash
    redocly lint
    ```

    You now see a warning about the missing license:

    ```bash
    validating openapi/openapi.yml using lint rules for api 'main@v1'...
    [1] openapi/openapi.yml:2:1 at #/info

    Info object should contain `license` field.

    1 | openapi: 3.1.1
    2 | info:
      | ^^^^
    3 |   title: OpenWeatherMap API
    4 |   description: >-

    Warning was generated by the info-license rule.
    ```

You can customize the linting behavior in several ways:

- Use different rulesets: `minimal`, `recommended`, `recommended-strict`, or `spec` (which checks compliance with the OpenAPI specification).
- Adjust rule severity levels: `error`, `warn`, or `off`.
- Add custom rules or override existing ones.

For example, to use the minimal ruleset:

```bash
redocly lint --extends minimal
```

Or to make all warnings into errors:

```bash
redocly lint --extends recommended-strict
```

{: .note}
Before continuing, restore the `license` object in your `openapi.yml` file.

### 4. Preview the Redoc output {#preview_output}

Redocly CLI includes a preview server that automatically rebuilds when it detects changes in your OpenAPI files. Let's see it in action:

1.  In your `redocly_project` folder, run the preview server:

    ```bash
    redocly preview --product=redoc
    ```

    The first time you run this command, it downloads the Redoc package, which takes a moment. You'll then see output similar to this:

    ```
    Launching preview of Redoc enterprise using NPX.
      ...
      ✅ Status: No errors found
      📄 Total pages: 9
      👀 Watching for changes...

      🌐 Preview URL: http://127.0.0.1:4000
    ```

    For more details, see the [preview command](https://redocly.com/docs/cli/commands/preview).

    {: .note}
    Redocly CLI version 1 used a `preview-docs` command for this step. Version 2 removed `preview-docs` and replaced it with `preview`. If port 4000 is already in use, the preview server uses the next available port, such as 4001.

2.  Open [http://127.0.0.1:4000](http://127.0.0.1:4000) in your browser to see your API documentation. The preview server creates a page for each OpenAPI file in the folder. For example, the split definition appears at `http://127.0.0.1:4000/openapi/openapi`.

    <img src="{{site.api_media}}/redoclypreviewdocsv2.jpg" style="border: 1px solid #dedede" alt="Redocly preview" />

    (The current preview might look a little different from this screenshot.)

3.  Test the auto-regeneration feature:
    - Open `openapi/components/parameters/lat.yml`
    - Make a change to the description
    - Save the file

    The preview server automatically detects the change, rebuilds the documentation, and refreshes your browser.

4.  When you're done with the preview server, press **Ctrl+C** in your terminal to stop the preview server.

{: .tip}
By default, the preview runs in enterprise plan mode, which shows the commercial Redoc features (such as the Try-it console) in your local preview. We'll look at the differences between the open-source and commercial versions in [7. Explore additional features](#explore_premium).

### 5. Bundle up the OpenAPI definition into a single file {#bundle}

When you're ready to use your OpenAPI definition with other tools, you might need to combine all the separate files into a single file. Here's how to create this bundle:

1.  Run the bundle command:

    ```bash
    redocly bundle openapi/openapi.yml -o dist.json
    ```

    The `-o dist.json` specifies the output file. After running the command, you'll see:

    ```bash
    bundling openapi/openapi.yml using configuration for api 'main@v1'...
    📦 Created a bundle for openapi/openapi.yml at dist.json 19ms.
    ```

2.  Open `dist.json` to see the complete OpenAPI definition with all references resolved into a single file.

{: .tip}
You can also bundle to YAML format by changing the extension: `-o dist.yaml`

### 6. Combine conceptual docs with reference docs {#conceptual_content}

A common challenge in API documentation is combining conceptual content (like getting started guides and tutorials) with reference documentation. Redocly offers several ways to integrate this content. Let's explore the simplest approach: using the OpenAPI `description` field with external Markdown.

1.  In your `openapi.yml` file, update the `info` section, specifically the `description` field, to reference an external Markdown file:

    ```yaml
    openapi: 3.1.1
    info:
      title: OpenWeatherMap API
      description:
        $ref: description.md
    ```

2.  Create `description.md` in your `openapi` folder with this structure:

    ```markdown
    # Getting Started

    Get the current weather, daily forecast for 16 days, and a
    three-hour-interval forecast for 5 days for your city.

    ## Authentication

    Learn how to authenticate with our API.

    # Usage Examples

    Interactive maps show precipitation, clouds, pressure, wind around your location.

    **Note**: This sample covers the `current` endpoint only.
    ```

3.  Start the preview server:

    ```bash
    redocly preview --product=redoc
    ```

    You might see a warning that Redoc doesn't support Markdown pages and will ignore `description.md`. The warning refers to standalone Markdown pages. The description content still appears in your docs because the OpenAPI file references it.

4.  Go to [http://127.0.0.1:4000/openapi/openapi](http://127.0.0.1:4000/openapi/openapi) and notice the following:

    - The description appears in your docs.
    - The headings in the description create entries in the sidebar navigation.
    - Content is easier to maintain in a separate Markdown file.

For more complex documentation needs, consider Redocly's additional solutions:

- [Revel](https://redocly.com/revel) for external developer portals
- [Reef](https://redocly.com/reef) for internal API catalogs
- [Realm](https://redocly.com/realm) for comprehensive documentation platforms

{% include random_ad2.html %}

### 7. Explore additional features {#explore_premium}

Redoc comes in two versions: an [open-source version](https://redocly.com/docs/redoc) ("Redoc CE," for community edition) and a [commercial version](https://redocly.com/reference) that's part of Redocly's paid plans. The open-source version provides core functionality for rendering OpenAPI definitions with a three-panel layout. The commercial version includes additional features such as:

- Try-it console for testing API requests
- Mock server functionality
- Generated code samples
- Advanced search capabilities
- Performance optimizations for large OpenAPI files
- Version switching
- Enhanced schema navigation
- Multiple examples support
- Role-based access controls
- SEO optimizations

For more information, see [Premium vs. open source features](https://redocly.com/blog/premium-vs-open-source).

As noted in step 4, the `redocly preview` command runs in enterprise plan mode by default, so you can already explore the commercial features in your local preview. To preview only the features available in the Pro plan, add `--plan=pro` to the command.

To publish docs with the commercial features, you need a Redocly plan, and you typically deploy through Redocly's [Reunite](https://redocly.com/reunite) platform. The `redocly login` command connects the CLI to Reunite. When you run it, the CLI opens a browser window where you authorize the login. See the [login command](https://redocly.com/docs/cli/commands/login) for more details.

### 8. Publish the reference output {#build}

So far we've been exploring the API reference output from within the preview server. Now let's publish the reference output for hosting elsewhere, using the open-source version of Redoc.

1.  Run the `build-docs` command:

    ```bash
    redocly build-docs openapi/openapi.yml
    ```

    This command builds your OpenAPI definition into a single, self-contained HTML file called `redoc-static.html`. (To use a different file name, add `--output=yourfilename.html`.) You might also see a notice that an upcoming version of Redocly CLI will switch `build-docs` to Redoc 3. For this tutorial, you can ignore the notice.

2.  Open `redoc-static.html` in your browser to view the output.

3.  To publish the docs, upload `redoc-static.html` to any web server.

Alternatively, you can add Redoc to an existing HTML page. Add the following within the `body` tags, and set `spec-url` to the location of your bundled OpenAPI file (such as `dist.json` from step 5):

```html
<redoc spec-url="dist.json"></redoc>
<script type="module" src="https://cdn.redoc.ly/redoc/v3.x/bundles/redoc.standalone.js"> </script>
```

To view this page locally, serve it through a local web server (for example, run `python3 -m http.server` in the folder) rather than opening the file directly, because browsers block pages opened from your file system from loading the `dist.json` file. For more details, see Redoc's [HTML deployment documentation](https://redocly.com/docs/redoc/v3.x/deployment/html).

{: .tip}
You can customize your documentation with various configuration options. Common customizations include theme colors and typography, response example settings, navigation behavior, and search functionality. See the [Redoc CE documentation](https://redocly.com/docs/redoc) for details.

For samples, check out the [Redoc showcase](https://github.com/Redocly/redoc#showcase), which includes companies like Docker, Zuora, and others.

{% include random_ad3.html %}

## Conclusion

Redoc provides one of the most attractive and functional outputs for REST API documentation. The three-column layout, with navigation, content, and examples clearly separated, creates a documentation experience that has become somewhat of an industry standard.

The tool offers several advantages:

- Clean, modern interface
- Support for OpenAPI 3.x and Swagger 2.0 (Redoc 3 adds support for OpenAPI 3.2, AsyncAPI, and GraphQL)
- Extensive customization options
- Command-line workflow integration
- Active development and community support

While Swagger UI remains popular due to its long history in the API documentation space, Redoc has gained significant adoption due to its modern design and feature set. The CLI-based toolset supports a [docs-as-code workflow](pubapis_docs_as_code.html), making it particularly appealing for teams already using version control and automation in their documentation process.

For organizations looking for additional features and support, [Redocly's platform](https://redocly.com/) offers enhanced capabilities including hosted documentation, automated builds, and team collaboration features.  You can start a [free trial here](https://app.redoc.ly/org/idratherbewriting/start-trial) or learn more at [Redocly](https://redocly.com/).