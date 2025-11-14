<script lang="ts">
    import {onMount} from "svelte";
    import swipeDetect from "$lib/swipe-detect";
    import type IRealisation from "../types/realisation";
    import Carousel from "./carousel/Carousel.svelte";
    import type Sample from "../types/sample";

    // --- props
    export let realisation: IRealisation;

    // --- data
    let container: HTMLElement;
    let carousel: Carousel;
    const THRESHOLD_FOR_SWIPE = 50;

    function onSwipe(dir: "left" | "right" | "up" | "down") {
        if (dir === "right") {
            return carousel.goPrev();
        }
        if (dir === "left") {
            return carousel.goNext();
        }
    }

    onMount(() => {
        if (!container) return;
        swipeDetect(container, onSwipe, THRESHOLD_FOR_SWIPE);
    });

    let isActiveSampleInverted = false;

    const onChangeActiveSample = (event: CustomEvent<Sample | undefined>) => {
        isActiveSampleInverted = event.detail?.variation === "inverted";
    };
</script>

<section class="container" bind:this={container} class:inverted={isActiveSampleInverted}>
    <div class="description">
        <h2 class="title">{realisation.title}</h2>
        <span class="subtitle">{realisation.type}</span>
        {#if realisation.videoUrl !== undefined}
            <a
                class="seeVideoLink"
                href={realisation.videoUrl}
                rel="noopener noreferrer"
                target="_blank"
                title="Ouvrir la vidéo dans un nouvel onglet">Voir</a
            >
        {:else}
            <span class="seeVideoLink disabled" title="Ouvrir la vidéo dans un nouvel onglet"
                >- Bientôt Disponible -</span
            >
        {/if}
    </div>
    <Carousel
        on:changeActiveSample={onChangeActiveSample}
        samples={realisation.samples}
        imageRatio={realisation.imageRatio}
        bind:this={carousel}
    />
</section>

<style>
    .container {
        position: relative;
        font-family: "SourceSansPro-BlackIt";
        overflow: hidden;
    }

    .description {
        position: absolute;
        z-index: 1;
        top: 0;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: white;
        opacity: 0.9;
        font-size: clamp(0.4em, 1.25vw, 1.5em);
        padding-top: 0;
    }

    .inverted .description {
        text-shadow: 1px 1px 1px black;
    }

    @media (min-width: 400px) {
        .description {
            padding-top: 3.5em;
        }
    }

    .description > * {
        margin-top: 0.25em;
    }

    .description > *:first-child {
        margin-top: 0;
    }

    .title {
        font-size: 3em;
        text-align: center;
        font-weight: 700;
        font-style: italic;
        margin: 0;
    }

    .subtitle {
        display: block;
        font-size: 1.5em;
    }

    .seeVideoLink {
        position: relative;
        text-decoration: none;
        font-size: 1.5em;
        padding: 0 1.5em 0 1.5em;
        border: 1px solid #fff;
        font-style: italic;
        box-sizing: border-box;
        margin-top: 1em;
    }

    .inverted .seeVideoLink {
        background: rgba(255, 255, 255, 0.4);
        border-color: rgb(50, 50, 50);
        color: rgb(50, 50, 50);
        text-shadow: none;
    }

    .seeVideoLink:not(.disabled):hover {
        transform: scale(1.1);
        box-shadow: 2px 2px 10px rgb(0, 0, 0, 0.5);
    }

    .seeVideoLink.disabled {
        opacity: 0.7;
        cursor: not-allowed;
        border: none;
    }

    .seeVideoLink::after {
        content: "";
        position: absolute;
        width: calc(100% + 1em);
        height: calc(100% + 1em);
        top: -0.5em;
        left: -0.5em;
    }
</style>
