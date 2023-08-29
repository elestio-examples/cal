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

### Cal Video is the in-house web-based video conferencing platform powered by Daily.co
If you wish to integrate Cal Video into a meeting, then follow the instructions listed below.
1. Visit [Daily.co Partnership](https://cal.com/forms/2466cf25-d341-4c4a-807e-8aff2de06d38) Form and enter your information
2. From within your dashboard, go to the [developer's](https://dashboard.daily.co/developers) tab.
3. Copy your API key.
4. Now paste the API key to your .env file into the `DAILY_API_KEY` field in your `.env` file (Open Elestio Dashboard -> CI/CD -> Go to Cal pipeline -> Build & Deploy -> Environment variables.)
5. If you have the [Daily Scale Plan](https://daily.co/pricing) set the `DAILY_SCALE_PLAN` variable to true in order to use features like video recording.
