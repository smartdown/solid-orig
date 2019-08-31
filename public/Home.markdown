### Welcome to Smartdown on Solid

This is an experiment that stores [Smartdown](https://smartdown.io) documents in a [Solid](https://solid.github.io/information/) POD, and enables those documents to be rendered via a Smartdown viewer app that is hosted on the same POD.

#### Smartdown Basics

Smartdown is a javascript library that interprets and renders Smartdown documents in a web browser. These documents are syntactically just ordinary Markdown, but Smartdown interprets the code block syntax in a way that optionally allows code (whether Javascript, Graphviz, or some other DSL) to become *playable* within the context of the page. This is augmented with an overloading of Markdown's URL syntax that enables input/output *cells* to be displayed and interacted with. The playables and cells communicate *reactively* via Smartdown variables that underly the page.


#### Smartdown Tunnels

Typically, a Smartdown project (aka notebook) is stored in one or more markdown files (usually with `.md` or `.markdown` extension) that I sometimes call *cards*. There is a URL syntax that enables one card to create a clickable link button to another card (I call it a *tunnel* to distinguish it from a link). A user clicking this will replace the content of the current card with the content of the linked-to card. This results in a single-page-app experience, but more importantly, state variables are maintained between these *tunnel* transitions, which enables multicard experiences to be authored more easily.


#### Smartdown on Solid

Because Smartdown uses `XMLHttpRequest` to load its documents, a Smartdown project can be stored anywhere on the web that is HTTPS-accessible (and that supports CORS). Typically, I use GitHub to store my Smartdown content, and I have a separate web application that uses Smartdown to load and render this content.

With Solid, I can store and edit the Smartdown docs in the context of Solid's POD and Data Browser, and I can host the viewer web app in Solid. More importantly, I can store data in the POD that can be accessed and visualized by Smartdown playables (I haven't exercised this feature for this demo, but it will work).


#### Source for this card

This particular Smartdown *card* is sourced from [Home.markdown](https://smartdown.solid.community/public/Home.markdown), which can be viewed (and edited, with suitable Solid permissions) in context at [Public](https://smartdown.solid.community/public/).


### More Examples of Smartdown on Solid

The examples below have been adapted slightly from the [Gallery](https://smartdown.site) examples.

- [P5JS Demo](:@/public/P5JS.markdown)
- [LDF Demo](:@/public/LDF.markdown)
- [D3 Demo](:@/public/D3.markdown)
- [Graphviz Demo](:@/public/Graphviz.markdown)
- [Mobius Demo (requires WebGL)](:@/public/Mobius.markdown)
- [Inline Playables](:@/public/Inlines.markdown)


#### Testing out Inter-POD Tunnels

Smartdown allows us to have a card-at-a-time view (similar to Hypercard), but allows those cards to be fetched from arbitrary URLs. Let's see if we can *tunnel* to a different POD and then back again.

[DrBud Home](:@https://drbud.solid.community/public/Home.markdown)


#### Testing writability from authorized WebIDs

Following the instructions in [Web Access Control Specification](https://github.com/solid/web-access-control-spec), I've granted write access to WebID https://drbud.solid.community/profile/card#me and want this user to be able to write into `/public` or its subdirectories.

This particular line of Home.markdown doc was modified by `drbud`, even though the POD is owned by `smartdown`. ... **https://drbud.solid.community/profile/card#me was here**


#### Testing Query Capability

- [LDFlex](:@/public/SolidLDFlex.markdown)
- [Queries](:@/public/SolidQueries.markdown)

