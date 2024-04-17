
# Adding Additional Pages to github pages

## TLDR 
This guide breaks down the process of adding pages to the github site into steps, making it easy for someone new to MkDocs to understand how to add more pages to their documentation site.

to run locally, use the command : 
```
mkdocs serve 
``` 

# Getting Started

If you want to add more pages to your MkDocs documentation, you can do so by updating the `mkdocs.yml` configuration file. Here's a simple guide to help you through the process:

### Before you begin, be sure to have the following installed : 
[mkdocs](https://www.mkdocs.org/getting-started/#getting-started-with-mkdocs)

## Step 1: Open `mkdocs.yml`

First, locate and open the `mkdocs.yml` file in your MkDocs project directory. This file contains the configuration settings for your documentation site.

## Step 2: Navigate to the `nav` Section

In the `mkdocs.yml` file, find the `nav` section. This section defines the navigation structure of your documentation site.

## Step 3: Add a New Page

To add a new page, you'll need to specify its title and the filename of the Markdown file associated with it. Follow this format:

```yaml
nav:
  - Home: index.md
  - About: about.md     # Add a new page titled "About" linked to about.md
  - Contact: contact.md # Add another page titled "Contact" linked to contact.md
```
You can replace "About" and "Contact" with your desired page titles, and about.md and contact.md with the filenames of your Markdown files.

## Step 4: Save Changes
Once you've added the new pages to the nav section, save the mkdocs.yml file.

## Step 5: Create Markdown Files
Finally, create Markdown files for each new page you've added. For example, create about.md and contact.md in the docs/ directory of your project.

## Step 6: Edit New Pages
You can now edit the content of the new Markdown files you've created to add your desired content for the "About" and "Contact" pages.

## Step 7: Run MkDocs
After adding and editing the necessary files, run MkDocs to see the changes:

```
mkdocs serve
```

This command starts a local server where you can preview your documentation site, including the new pages you've added.



