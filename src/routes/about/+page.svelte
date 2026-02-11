<script lang="ts">
    import {assets} from "$app/paths";
    import VimeoLogo from "$components/social/VimeoLogo.svelte";
    import InstagramLogo from "$components/social/InstagramLogo.svelte";
    import MailLink from "$components/social/MailLink.svelte";
    import Copyright from "$components/Copyright.svelte";
</script>

<svelte:head>
    <title>Paul & Mathias - À Propos</title>
    <meta name="keywords" content="Audiovisuel, Expérience, Réaliser, Univers atypiques, Créer de l'émotion, Contact" />
    <meta
        name="description"
        content="Découvrir Paul & Mathias, deux réalisateurs français passionnés. Nous contacter."
    />
</svelte:head>

<div class="container">
    <div class="content">
        <hr class="hr-sizein hr-semifull" />
        <section class="about-content">
            <div class="images-container">
                <img class="img" src={`${assets}/imgs/about-2024_1.jpg`} alt="Paul et Mathias sur un tournage" />
            </div>

            <div class="about-text-container">
                <p class="about-text">
                    <strong>Paul Gojecki</strong> et <strong>Mathias Priou</strong> forment un duo d'auteurs et
                    réalisateurs basé à <strong>Paris</strong> et <strong>Luxembourg</strong>.
                </p>
                <p class="about-text">
                    Complets dans leur approche, ils ont un sens aigu de la précision, du cadre et du rythme. Entre
                    publicité, clip et fiction, ils développent un style cinématographique nourri de fortes références
                    visuelles et narratives.
                </p>
                <p class="about-text">
                    Ils accordent une attention particulière au sound design et à la dimension sensorielle de leurs
                    films. Ils utilisent leurs affinités pour les nouvelles technologies comme des outils au service du
                    récit, toujours guidés par la précision et <strong>l'émotion</strong>.
                </p>
            </div>

            <div class="images-container">
                <img class="img" src={`${assets}/imgs/about-2024_2.jpg`} alt="Paul et Mathias sur un tournage" />
            </div>
        </section>
        <hr class="hr-sizein hr-semifull" />
        <section class="contact">
            <span class="email-link"><MailLink /></span>
            <div class="social-links">
                <span class="social-link"><VimeoLogo background /></span>
                <span class="social-link"><InstagramLogo background /></span>
            </div>
        </section>
    </div>
    <span class="copyright"><Copyright /></span>
</div>

<style>
    .container {
        padding: 0 var(--wpadding-text);
        padding-top: calc(var(--navbar-height) * 0.75);
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        text-align: right;
        box-sizing: border-box;
        color: rgba(0, 0, 0, 0.6);
        min-height: calc(100vh - var(--navbar-height));
    }

    .content {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        justify-content: center;
    }

    .about-content {
        display: flex;
        gap: 2em;
        margin: 2em 0;
        font-family: SourceSansPro-Regular;
        flex-direction: column-reverse;
    }

    .images-container {
        display: flex;
        align-items: center;
        line-height: 0;

        -webkit-animation: fadein 1s ease;
        -moz-animation: fadein 1s ease;
        -ms-animation: fadein 1s ease;
        -o-animation: fadein 1s ease;
        animation: fadein 1s ease;
        -webkit-animation-fill-mode: both;
        -moz-animation-fill-mode: both;
        -ms-animation-fill-mode: both;
        -o-animation-fill-mode: both;
        animation-fill-mode: both;

        -webkit-animation-delay: 1.25s;
        -moz-animation-delay: 1.25s;
        -ms-animation-delay: 1.25s;
        -o-animation-delay: 1.25s;
        animation-delay: 1.25s;
    }

    .about-text-container {
        margin-left: 0;
    }

    .about-text {
        font-size: 1.2em;
        line-height: 1.7;
        text-align: justify;
        margin: 0;
        margin-bottom: 1em;

        -webkit-animation: fadein 0.5s ease 1s;
        -moz-animation: fadein 0.5s ease 1s;
        -ms-animation: fadein 0.5s ease 1s;
        -o-animation: fadein 0.5s ease 1s;
        animation: fadein 0.5s ease 1s;
        -webkit-animation-fill-mode: both;
        -moz-animation-fill-mode: both;
        -ms-animation-fill-mode: both;
        -o-animation-fill-mode: both;
        animation-fill-mode: both;
    }

    .about-text:last-child {
        margin-bottom: 0;
    }

    .about-text strong {
        color: rgba(0, 0, 0, 1);
    }

    .img {
        width: 100%;
        height: auto;
    }

    .hr-sizein {
        -webkit-animation: sizein 1s ease 0.2s;
        -moz-animation: sizein 1s ease 0.2s;
        -ms-animation: sizein 1s ease 0.2s;
        -o-animation: sizein 1s ease 0.2s;
        animation: sizein 1s ease 0.2s;
        -webkit-animation-fill-mode: both;
        -moz-animation-fill-mode: both;
        -ms-animation-fill-mode: both;
        -o-animation-fill-mode: both;
        animation-fill-mode: both;
        margin: 0;
    }

    .hr-semifull {
        animation-delay: 1.5s;
    }

    .contact {
        display: flex;
        justify-content: center;
        flex-direction: column;
        width: 100%;
        margin-top: 5em;

        -webkit-animation: fadein 1s ease 2s;
        -moz-animation: fadein 1s ease 2s;
        -ms-animation: fadein 1s ease 2s;
        -o-animation: fadein 1s ease 2s;
        animation: fadein 1s ease 2s;
        -webkit-animation-fill-mode: both;
        -moz-animation-fill-mode: both;
        -ms-animation-fill-mode: both;
        -o-animation-fill-mode: both;
        animation-fill-mode: both;
    }

    .contact > * {
        margin-top: 2em;
    }
    .contact > *:first-child {
        margin-top: 0;
    }

    .email-link {
        color: rgba(0, 0, 0, 1);
        text-align: center;
    }

    .social-links {
        display: flex;
        justify-content: center;
        padding: 1em 0;
    }

    .social-link {
        font-size: 110%;
        width: 2em;
        height: 2em;
        margin-left: 2em;
        display: inline-block;
    }

    .social-link:first-child {
        margin-left: 0;
    }

    .copyright {
        width: 100%;
        text-align: center;
        padding: 1.25em 0;
        margin-top: 5em;
    }

    @media (min-width: 1100px) {
        .container {
            min-height: 100vh;
            padding-top: calc(2 * var(--navbar-height));
        }
    }

    @media (min-width: 1100px) {
        .container {
            padding-top: 10%;
        }

        .about-content {
            flex-direction: row;
            gap: 2vw;
        }

        .about-text {
            font-size: 1.2vw;
        }

        .images-container {
            margin-top: 0;
            -webkit-animation-delay: 0s;
            -moz-animation-delay: 0s;
            -ms-animation-delay: 0s;
            -o-animation-delay: 0s;
            animation-delay: 0s;
            flex-basis: 60%;
        }

        .hr-semifull {
            max-width: calc(100% - 18vw);
            align-self: center;
            animation-delay: 1.5s;
        }
    }

    @keyframes sizein {
        from {
            width: 0.01%;
        }
        to {
            width: 100%;
        }
    }

    @-moz-keyframes sizein {
        from {
            width: 0%;
        }
        to {
            width: 100%;
        }
    }

    @-webkit-keyframes sizein {
        from {
            width: 0%;
        }
        to {
            width: 100%;
        }
    }

    @-ms-keyframes sizein {
        from {
            width: 0%;
        }
        to {
            width: 100%;
        }
    }

    @-o-keyframes sizein {
        from {
            width: 0%;
        }
        to {
            width: 100%;
        }
    }
</style>
