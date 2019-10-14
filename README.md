# solid

Integration with Solid https://www.solidproject.org

### Installing Smartdown for Solid

The installation has been tested for the following configuration:

- Markdown/Smartdown files placed in `/public/`
- A `/public/Home.markdown` file
- Files suffixed with `.markdown`
- A folder named `smartdown/` placed in `/public/smartdown/`
- An `index.html` placed in `/public/smartdown/index.html`

The `.markdown` requirement is historical and probably unnecessary; it was due to an earlier version of Node Solid Server and my perception that `.markdown` would have its MIME type recognized. I'm still not sure of the status of this.
