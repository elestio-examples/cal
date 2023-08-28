# Cal CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/cal"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy Cal server with CI/CD on Elestio

<img src="cal.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open Cal ADMIN UI here:

    URL: https://[CI_CD_DOMAIN]
    email: [ADMIN_EMAIL]
    password: [ADMIN_PASSWORD]

You can open the pgAdmin web UI here:

    URL: https://[CI_CD_DOMAIN]:8443
    email: [ADMIN_EMAIL]
    password: [ADMIN_PASSWORD]

# Custom App integration...

Custom application installations such as Google Calendar, Zoom, Microsoft Graph, and others require you to configure their API secrets.

Visit https://cal.com/docs/introduction/quick-start/self-hosting/install-apps to learn more about installing custom applications and creating api credentials.

After creating the keys you can add these keys to your application by following the steps:

Open Elestio Dashboard -> CI/CD -> Go to Cal pipeline -> Build & Deploy -> Environment variables.

Your application's API Keys can be entered here. For instance, if you're installing Google Calendar, you can enter your Google API credentials in the GOOGLE_API_CREDENTIALS key.
