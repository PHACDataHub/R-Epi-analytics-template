# Adding Additional Pages to GitHub Pages

## TLDR 
This guide simplifies the process of adding pages to a GitHub site using MkDocs, providing clear steps for newcomers to easily expand their documentation site.

To run locally, use the command: 

```
mkdocs serve
```


# Getting Started

Before you begin, ensure you have the following installed: 
```
pip install mkdocs mkdocstrings
```
For a more detailed explinAtion, see the [MkDocs](https://www.mkdocs.org/getting-started/#getting-started-with-mkdocs) documentation



## Step 1: Open `mkdocs.yml`

First, locate and open the `mkdocs.yml` file in your MkDocs project directory. This file contains the configuration settings for your documentation site.

## Step 2: Navigate to the `nav` Section

In the `mkdocs.yml` file, find the `nav` section. This section defines the navigation structure of your documentation site.

## Step 3: Add a New Page

To add a new page, specify its title and the filename of the associated Markdown file. Follow this format:

#### Example: 
```yaml
nav:
  - Home: index.md
  - About: about.md     # Add a new page titled "About" linked to about.md
  - Contact: contact.md # Add another page titled "Contact" linked to contact.md

```
*Replace "About" and "Contact" with your desired page titles, and about.md and contact.md with the filenames of your Markdown files.*

## Step 4: Save Changes
Once you've added the new pages to the nav section, save the mkdocs.yml file.

## Step 5: Create Markdown Files
Create Markdown files for the newly added pages. For example, create about.md and contact.md in the docs/ directory of your project.

## Step 6: Edit New Pages
Edit the content of the new Markdown files to add your desired content for the "About" and "Contact" pages.

## Step 7: Run MkDocs
After adding and editing the necessary files, run MkDocs to see the changes:


```
mkdocs serve
```

This command starts a local server where you can preview your documentation site, including the new pages you've added.