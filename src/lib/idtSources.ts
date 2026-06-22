export type ExternalSource = {
  title: string;
  description: string;
  category: string;
  sourceName: string;
  url: string;
};

const audioBase = "https://audio.iskcondesiretree.com/index.php?f=";

function folder(path: string) {
  return `${audioBase}${encodeURIComponent(path)}&q=f`;
}

export const idtSources: ExternalSource[] = [
  {
    title: "ISKCON Desire Tree Audio Archive",
    description: "Main external audio archive home. Use this to discover folders, then return to Shravanam to track hearing.",
    category: "Main Archive",
    sourceName: "ISKCON Desire Tree Audio",
    url: "https://audio.iskcondesiretree.com/",
  },
  {
    title: "Srila Prabhupada Audio Archive",
    description: "External folder for Srila Prabhupada audio collections.",
    category: "Srila Prabhupada",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/01_-_Srila_Prabhupada"),
  },
  {
    title: "ISKCON Swamis Archive",
    description: "Top-level external archive for ISKCON Swamis.",
    category: "ISKCON Swamis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/02_-_ISKCON_Swamis"),
  },
  {
    title: "ISKCON Swamis — A to C",
    description: "Alphabetical external source section for Swamis from A to C.",
    category: "ISKCON Swamis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/02_-_ISKCON_Swamis/ISKCON_Swamis_-_A_to_C"),
  },
  {
    title: "ISKCON Swamis — D to P",
    description: "Alphabetical external source section for Swamis from D to P.",
    category: "ISKCON Swamis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/02_-_ISKCON_Swamis/ISKCON_Swamis_-_D_to_P"),
  },
  {
    title: "ISKCON Swamis — R to Y",
    description: "Alphabetical external source section for Swamis from R to Y.",
    category: "ISKCON Swamis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/02_-_ISKCON_Swamis/ISKCON_Swamis_-_R_to_Y"),
  },
  {
    title: "ISKCON Prabhujis Archive",
    description: "Top-level external archive for ISKCON Prabhujis.",
    category: "ISKCON Prabhujis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/03_-_ISKCON_Prabhujis"),
  },
  {
    title: "ISKCON Prabhujis — A to J",
    description: "Alphabetical external source section for Prabhujis from A to J.",
    category: "ISKCON Prabhujis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/03_-_ISKCON_Prabhujis/ISKCON_Prabhujis_-_A_to_J"),
  },
  {
    title: "ISKCON Prabhujis — K to R",
    description: "Alphabetical external source section for Prabhujis from K to R.",
    category: "ISKCON Prabhujis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/03_-_ISKCON_Prabhujis/ISKCON_Prabhujis_-_K_to_R"),
  },
  {
    title: "ISKCON Prabhujis — S to Y",
    description: "Alphabetical external source section for Prabhujis from S to Y.",
    category: "ISKCON Prabhujis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/03_-_ISKCON_Prabhujis/ISKCON_Prabhujis_-_S_to_Y"),
  },
  {
    title: "ISKCON Matajis Archive",
    description: "External archive section for Matajis and devotional classes.",
    category: "ISKCON Matajis",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/04_-_ISKCON_Matajis"),
  },
  {
    title: "ISKCON Chowpatty Archive",
    description: "External source section for Chowpatty classes, bhajans, kirtan fest, seminars, festivals, yatra, and year-wise folders.",
    category: "ISKCON Chowpatty",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/05_-_ISKCON_Chowpatty"),
  },
  {
    title: "ISKCON Desire Tree More Archives",
    description: "External archive section containing many temple/center folders and additional collections.",
    category: "More Archives",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/06_-_More"),
  },
  {
    title: "ISKCON Kanpur Archive",
    description: "External archive folder for ISKCON Kanpur content.",
    category: "ISKCON Kanpur",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/06_-_More/03_-_ISKCON_Kanpur"),
  },
  {
    title: "ISKCON GEV Archive",
    description: "External archive folder for ISKCON Govardhan Ecovillage content.",
    category: "ISKCON Centers",
    sourceName: "ISKCON Desire Tree Audio",
    url: folder("/06_-_More/00_-_ISKCON_GEV"),
  },
  {
    title: "Bhagavad Gita Class External Site",
    description: "Related external website for Bhagavad Gita classes.",
    category: "Bhagavad Gita",
    sourceName: "Bhagavad Gita Class",
    url: "https://bhagavadgitaclass.com/",
  },
  {
    title: "Srimad Bhagavatam Class External Site",
    description: "Related external website for Srimad Bhagavatam classes.",
    category: "Srimad Bhagavatam",
    sourceName: "Srimad Bhagavatam Class",
    url: "https://www.srimadbhagavatamclass.com/",
  },
  {
    title: "ISKCON Desire Tree SoundCloud",
    description: "Related external SoundCloud source linked by the audio archive.",
    category: "SoundCloud",
    sourceName: "SoundCloud",
    url: "https://soundcloud.com/iskcon-desire-tree",
  },
];
