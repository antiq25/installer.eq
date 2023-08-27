"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[4179],{73234:(e,a,i)=>{i.r(a),i.d(a,{default:()=>pi});var t=i(59496),n=i(84875),s=i.n(n),r=i(80519),l=i(64641),c=i(73630),o=i(97653),d=i(69705),m=i(76163),u=i(55740),k=i(57579),g=i(3819),p=i(94942),x=i(28725),h=i(88758),v=i(85583),y=i(59476),N=i(86739),j=i(17286),b=i(6123),I=i(2651),C=i(2238),T=i(61649),L=i(5367);const S="o2TlnuNKxRO5RnB9BpHB",f="q0Ke_aAvTcc4dO4wCHQt",A="UlKUfS_GcROZmofuafOW",O="I5LORTI1u3A6VoUvRCBf",P="TS85Qkpioa31wR0p4kzT",R="yL1DLXBc05CR_ACv_NhA",U="k5kRkUyoz9znqg_SGOVQ";var F=i(10325),w=i(33334),D=i(97045),B=i(37859),_=i(18864),E=i(4637);let M=function(e){return e.SMALL="small",e.LARGE="large",e}({});const G=({art:e,disabled:a=!1,LinkComponent:i,name:t,size:n=M.SMALL,type:c,uri:o})=>{const d=e?[e]:[],k=n===M.SMALL?(0,w.R)(c):function(e){switch(e){case F.albumType.SINGLE:return u.ag.get("track-page.from-the-single");case F.albumType.EP:return u.ag.get("track-page.from-the-ep");case F.albumType.COMPILATION:return u.ag.get("track-page.from-the-compilation");case F.albumType.ALBUM:default:return u.ag.get("track-page.from-the-album")}}(c),g=(0,r.s0)();return(0,E.jsxs)("div",{className:s()(S,{[A]:n===M.SMALL,[f]:a}),children:[(0,E.jsx)("div",{className:O,children:(0,E.jsx)(D.O,{images:d,size:_.m$.SIZE_80,title:t,type:B.p.ALBUM})}),(0,E.jsxs)("div",{className:P,children:[(0,E.jsx)(l.D,{variant:n===M.SMALL?"mestoBold":"finale",children:k}),(0,E.jsx)(i,{to:o,children:(0,E.jsx)(l.D,{as:"div",className:R,variant:"balladBold",dir:"auto",children:t})})]}),(0,E.jsx)("div",{onClick:()=>{g((0,m.EC)(o).toURLPath(!0))},className:U})]})};var Z=i(85018),$=i(82487),K=i(55207),Y=i(4302),z=i(16391);let V=function(e){return e.LOADING="LOADING",e.LOADED="LOADED",e.UNAVAILABLE="UNAVAILABLE",e}({});const W=(0,z.Uy)(((e,a)=>{switch(a.type){case"LYRICS_LOADING":e[a.uri]={status:V.LOADING};break;case"LYRICS_LOADED":e[a.uri]={status:V.LOADED,data:a.response};break;case"LYRICS_ERROR":e[a.uri]={status:V.UNAVAILABLE};break;default:throw new Error(`Unhandled lyrics action with type: ${a.type}`)}}));var J=i(20620),H=i(66252),Q=i(55513);const q={status:V.LOADING},X={status:V.UNAVAILABLE},ee=t.createContext(void 0),ae=({children:e,initialState:a={}})=>{const i=t.useReducer(W,a);return(0,E.jsx)(ee.Provider,{value:i,children:e})},ie=(e,a)=>{const i=t.useContext(ee);if(void 0===i)throw new Error("useTrackEntityLyrics must be used within a TrackEntityLyricsProvider");if(!e||!(0,m.wj)(e)||a)return X;const[n,s]=i,r=n[e];return r||(s({type:"LYRICS_LOADING",uri:e}),(async(e,a)=>{const i=(0,m.EC)(e);try{const e=await H.Zz.getSEOTrackLyrics(a||J.b.getInstance(),i.id);return{hasLyrics:!0,syncType:e.lyrics.syncType,lyrics:e.lyrics.lines,provider:e.lyrics.provider,providerDisplayName:e.lyrics.providerDisplayName,providerLyricsId:e.lyrics.providerLyricsId,isRtlLanguage:e.lyrics.isRtlLanguage}}catch(e){if(e instanceof Q.m&&404===e.status)return{hasLyrics:!1};throw e}})(e).then((a=>{s({type:"LYRICS_LOADED",uri:e,response:a})})).catch((()=>{s({type:"LYRICS_ERROR",uri:e})})),q)};var te=i(58069),ne=i(38442),se=i(96645),re=i(24949);const le=(e,a)=>(0,re.vI)(se.k.IlrTrackCanonicalTop,a)||e===ne.Zn.CANONICAL_TOP_POSITION,ce=(e,a)=>(0,re.vI)(se.k.IlrTrackCanonicalBottom,a)||e===ne.Zn.CANONICAL_BOTTOM_POSITION,oe=(e,a)=>(0,re.vI)(se.k.IlrTrackOrganicTop,a)||e===ne.Zn.ORGANIC_TOP_POSITION,de=(e,a)=>(0,re.vI)(se.k.IlrTrackOrganicBottom,a)||e===ne.Zn.ORGANIC_BOTTOM_POSITION,me=(e,a)=>le(e,a)||ce(e,a)||oe(e,a)||de(e,a);ne.Zn.DEFAULT,ne.Zn.CONTROL,ne.Zn.CANONICAL_TOP_POSITION,te.JI.ContentOnly,ne.Zn.CANONICAL_BOTTOM_POSITION,te.JI.ContentOnly,ne.Zn.ORGANIC_TOP_POSITION,te.JI.OrganicTraffic,ne.Zn.ORGANIC_BOTTOM_POSITION,te.JI.OrganicTraffic;var ue=i(57115),ke=i(93868),ge=i(42203),pe=i(46827);const xe="oTRKhYD0MZlNPm66W3Tw",he="sc95MwPalcHwYGZ7j3xN",ve="zrCZCfYv4zZiB1HYv9i8",ye="RnlxIDmWcYTbbwNSJNjA",Ne="SHkxfN1vy0wpRMP1hK7I",je="COXBS6zLyyxKNYuEAzjZ",be="pynMsudlBeLA8TZkPvmK",Ie="sR5IpdOUvoUGYKlC9Dk1",Ce="FHMr3WxshoYjZ7jd3YwI",Te="Evcwc4KM2tf9xrLbfB8B",Le="x4_dsi31Cx2SO1L0uYIj",Se="euPDqfFEBILj9KHDNLC1",fe="x6FPRUKK40oDCPP7g6Ls",Ae="k3SPcfaKewjfdYumDcGw",Oe="t9C7vRiN1OSC9uWfJEr0",Pe="Onv6dO4lntCzKUqYa8PE",Re=({richTrack:e})=>{const{search:a}=(0,r.TH)(),i=(0,t.useCallback)((()=>new URLSearchParams(a.slice(1)).get("highlight")||""),[a])(),{tracklistRef:n}=(0,pe.W)(),s=e.albumOfTrack,l=(0,ge.Y)(s?.uri||""),{usePlayContextItem:c}=(0,K.n)({uri:l},{featureIdentifier:"album"}),o=(0,t.useMemo)((()=>({items:[],totalCount:0})),[]);return s?(0,E.jsx)("div",{ref:n,className:Ie,children:(0,E.jsx)(ke.L,{ariaLabel:s.name,nrTracks:s.tracks.totalCount,albumUri:s.uri,highlightUri:i,discs:o,usePlayContextItem:c,hasHeaderRow:!1})}):null},Ue="UDuv2dzJuOEimwKzf_Ht",Fe="crU3_phk5OplHUp2b_iW",we=({padded:e})=>(0,E.jsx)(l.D,{as:"p",dir:"auto",variant:"finale",className:`${Ue} ${e?Fe:""}`,children:"Lyrics powered by Musixmatch."}),De=({uri:e})=>{const{status:a}=ie(e);return a!==V.LOADED?null:(0,E.jsx)(we,{})};var Be=i(99766),_e=i(89120);const Ee="QhDsXG1Gmo7XmQWLggAO",Me="bZgWQj7UxvK8GYKWDA7N",Ge="AW61P3tnW5cKJCWtbhFh",Ze=({buttonText:e,onSecondaryButtonClick:a,onPrimaryButtonClick:i,secondaryButtonText:t,text:n})=>(0,E.jsxs)("div",{className:Ee,"data-testid":"static-activation-trigger",children:[(0,E.jsx)(l.D,{className:Me,variant:"cello",children:n}),(0,E.jsxs)("div",{className:Ge,children:[(0,E.jsx)(c.o,{onClick:a,semanticColor:"textBase",children:t}),(0,E.jsx)(_e.D,{onClick:i,colorSet:"invertedLight",children:e})]})]});var $e=i(93399);const Ke="T1nqQ4HEh3heHy4RCCKa",Ye="L8zjshPVgUMXyZR4FtOk",ze="YMn1FWcFmOz9osBrNvhF",Ve="Inbyq3TnvKDOJtcKFTDQ",We="lWk5se4WETUOJwaEb8D6",Je="i8DyQbWCmDV_8N5XGJQT",He="t5WPFlGTY6GCd9UOFfLu",Qe="AGQ3wRyMVK1odq860qnT",qe="ZX_r7uZgPgssaUplfpxT",Xe="qrqctaPu2XBpxsw23nPX",ea="XnWidTagai3nQwMPxIMF";var aa=i(18270),ia=i(22326);let ta=function(e){return e.SMALL="small",e.LARGE="large",e}({});const na=e=>{const{disabled:a,images:i,LinkComponent:t,name:n,size:c,uri:o,enableI18nRoutes:d,enableI18nAdditionalPages:k}=e,g=c===ta.SMALL,p=(0,r.s0)(),x=(0,m.EC)(o),h=x?.type,v=u.ag.getUrlLocale(),y=(0,aa.S9)({localeFeatureFlag:d,entityFeatureFlag:k,urlLocale:v,entity:h,type:"link"});return(0,E.jsxs)("div",{className:s()(Ye,{[ze]:a}),"data-testid":"track-artist-link-card",children:[(0,E.jsx)(D.O,{shape:D.K.CIRCLE,images:i,size:_.m$.SIZE_80,title:n,type:B.p.ARTIST}),(0,E.jsxs)("div",{className:s()(We,{[Je]:g}),children:[(0,E.jsx)(l.D,{variant:"mestoBold",className:Ve,children:u.ag.get("card.tag.artist")}),(0,E.jsx)(t,{to:o,children:(0,E.jsx)(l.D,{as:"div",dir:"ltr",className:He,variant:"balladBold",children:n})})]}),(0,E.jsx)("div",{onClick:()=>{const e=x?.toURL(`/${ia.F0}${v}/`);if(x){const a=y?e:x.toURLPath(!0);p(a)}},className:Qe})]})},sa=({size:e=ta.LARGE,disabled:a=!1,enableI18nRoutes:i,enableI18nAdditionalPages:n,...r})=>{const[o,d]=(0,t.useState)(!1),m=(0,t.useCallback)((()=>{d(!o)}),[o]),k=r.artists;return(0,E.jsxs)("div",{"data-testid":"track-artist-link-card-container",children:[(0,E.jsx)("div",{className:Ke,children:k.map(((t,l)=>(0,E.jsx)("div",{className:s()({[Xe]:o&&l>5,[qe]:l>5}),children:(0,E.jsx)(na,{name:t.name,uri:t.uri,images:t.images,size:e,LinkComponent:r.LinkComponent,disabled:a,enableI18nRoutes:i,enableI18nAdditionalPages:n},t.id)},`${t.uri}-${l}`)))}),k.length>6&&(0,E.jsx)(c.o,{onClick:m,className:ea,children:(0,E.jsx)(l.D,{as:"p",variant:"violaBold",children:o?u.ag.get("show_less"):u.ag.get("mwp.search.artists.all")})})]})};var ra=i(54738);const la="EaTxqhHk6J4ecKHwpY5m",ca="dUQl9yd5x_1oWk4L0Ntm",oa="xt5C47eHPYNiriMJxGnC",da=({words:e})=>(0,E.jsx)(l.D,{as:"p",dir:"auto",variant:"ballad",className:oa,children:e}),ma=({lines:e=[]})=>0===e.length?null:(0,E.jsxs)("div",{className:la,children:[(0,E.jsx)(l.D,{as:"h2",variant:"canon",semanticColor:"textBase",className:ca,children:u.ag.get("web-player.lyrics.title")}),e.map((({words:e},a)=>(0,E.jsx)(da,{words:e},`lyrics-seo-line-${a}`)))]}),ua=({uri:e})=>{const{data:a}=ie(e);return a&&a?.hasLyrics?(0,E.jsx)(ma,{lines:a.lyrics}):null};var ka=i(17140),ga=i(55189),pa=i(44893);const xa=e=>{const{albumArtists:a,columnCount:i,uri:n}=e,r=i-2,l={"--column-count":i,"--left-column-end":r-2,"--right-column-start":r},{isAnonymous:c}=(0,Be.v9)(pa.Gg),o=(0,ka.k)(),{data:d,status:m}=ie(n,c),k=!!d&&d.hasLyrics&&m!==V.UNAVAILABLE||c,g=(0,Be.v9)(ga.br),p=(0,Be.v9)(ga.yE);return(0,E.jsxs)(t.Suspense,{fallback:null,children:[k&&(0,E.jsx)("div",{className:s()(ve,{[ye]:i>5}),style:{...l},children:c?(0,E.jsx)(Ze,{buttonText:u.ag.get("sign_up"),secondaryButtonText:u.ag.get("login"),text:u.ag.get("track-page.sign-in-to-view-lyrics"),onPrimaryButtonClick:ra.L6,onSecondaryButtonClick:ra.h$}):(0,E.jsx)(ua,{uri:n})}),(0,E.jsx)("div",{className:s()(xe,{[he]:i>5&&k}),style:{...l},children:(0,E.jsx)(sa,{artists:a,LinkComponent:$e.default,disabled:!o,enableI18nRoutes:g,enableI18nAdditionalPages:p})})]})};var ha=i(42673),va=i(39871),ya=i(4699),Na=i(70916),ja=i(59642),ba=i(14126),Ia=i(91560),Ca=i(80495),Ta=i(2437),La=i(84179),Sa=i(2900),fa=i(46061),Aa=i(25199),Oa=i(54204);const Pa="Z9Dr8PkXFtlO8KnnDcxp",Ra="Bm0LUMlhVIcF5qusgdUP",Ua="GIyB7JDkRwjtVL6PSBbg",Fa="whTIka0YYAkqhqrs26Wa",wa=t.memo((function({uri:e,name:a,imgUrl:i,artists:t,isExplicit:n,index:s,albumUri:r,contextUri:l,isPlayable:c,usePlayContextItem:o,isMOGEFRestricted:d,totalMilliseconds:m,playcount:k}){const{isActive:g,isPlaying:p,triggerPlay:x,togglePlay:v}=o({uri:e,index:s}),y=(0,Ca._)(e),N=(0,La.k)(e,c),j=t.map((e=>e.name)).join(u.ag.getSeparator()),{badges:b,hasBadges:I}=(0,Ta.r)({isMOGEFRestricted:d,downloadAvailability:y,isExplicit:n}),C=t.map((e=>e.name)).join(u.ag.getSeparator());return(0,E.jsx)(Ia.ZP,{value:"row",index:s,children:(0,E.jsx)(ya._,{menu:(0,E.jsx)(h.$,{uri:e,albumUri:r,artists:t,contextUri:l}),children:(0,E.jsxs)(Oa.c,{uri:e,contextUri:l,isPlayable:N,onTriggerPlay:(e,a)=>{x({loggingParams:a})},isActive:g,index:s,ariaRowIndex:s,dragMetadata:{name:a,createdBy:j},children:[(0,E.jsxs)(fa.vZ,{ariaColIndex:0,children:[(0,E.jsx)(fa.VG,{uri:e,src:i,onClick:(e,a)=>{v({loggingParams:a})},isLocked:!1,isPlaying:p,isActive:g,playAriaLabel:u.ag.get("tracklist.a11y.play",a,j)}),(0,E.jsxs)(fa.vm,{children:[(0,E.jsx)(Sa.G,{uri:e,enabled:!0,className:Ua,children:(0,E.jsx)(fa.Wh,{titleText:a,children:a})}),I&&(0,E.jsxs)(fa.g3,{children:[b.download&&(0,E.jsx)(Na.G,{size:16}),b.explicit&&(0,E.jsx)(ja.N,{}),b.nineteen&&(0,E.jsx)(ba.X,{className:Fa,size:16})]}),(0,E.jsx)(fa.K9,{children:(0,E.jsx)(fa.T6,{artists:t})})]})]}),(0,E.jsx)(fa.UA,{ariaColIndex:1,children:(0,E.jsx)(Aa.B,{playcount:k})}),(0,E.jsxs)(fa.mU,{ariaColIndex:2,children:[(0,E.jsx)(fa.qS,{uri:e}),(0,E.jsx)(fa.A$,{duration:m}),(0,E.jsx)(fa.Zv,{menu:(0,E.jsx)(h.$,{uri:e,albumUri:r,contextUri:l,artists:t}),label:u.ag.get("more.label.track",a,C)})]})]})})})}),((e,a)=>e.uri===a.uri&&e.index===a.index));var Da=i(69496);const Ba={kind:"Document",definitions:[{kind:"OperationDefinition",operation:"query",name:{kind:"Name",value:"internalLinkRecommenderTrack"},variableDefinitions:[{kind:"VariableDefinition",variable:{kind:"Variable",name:{kind:"Name",value:"uri"}},type:{kind:"NonNullType",type:{kind:"NamedType",name:{kind:"Name",value:"ID"}}}},{kind:"VariableDefinition",variable:{kind:"Variable",name:{kind:"Name",value:"strategy"}},type:{kind:"NamedType",name:{kind:"Name",value:"SEORankingStrategy"}}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"seoRecommended"},arguments:[{kind:"Argument",name:{kind:"Name",value:"seoRecommendedInput"},value:{kind:"ObjectValue",fields:[{kind:"ObjectField",name:{kind:"Name",value:"strategy"},value:{kind:"Variable",name:{kind:"Name",value:"strategy"}}},{kind:"ObjectField",name:{kind:"Name",value:"uri"},value:{kind:"Variable",name:{kind:"Name",value:"uri"}}}]}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"items"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"data"},selectionSet:{kind:"SelectionSet",selections:[{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"GenericError"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"message"}}]}},{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"NotFound"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"message"}},{kind:"Field",name:{kind:"Name",value:"uri"}}]}},{kind:"FragmentSpread",name:{kind:"Name",value:"ilrTrackData"}}]}}]}}]}}]}},{kind:"FragmentDefinition",name:{kind:"Name",value:"ilrTrackData"},typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Track"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Track"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"name"}},{kind:"Field",name:{kind:"Name",value:"artists"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"items"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"profile"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"name"}}]}}]}}]}},{kind:"Field",name:{kind:"Name",value:"duration"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"totalMilliseconds"}}]}},{kind:"Field",name:{kind:"Name",value:"contentRating"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"label"}}]}},{kind:"Field",name:{kind:"Name",value:"playability"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"playable"}}]}},{kind:"Field",name:{kind:"Name",value:"playcount"}},{kind:"Field",name:{kind:"Name",value:"albumOfTrack"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"coverArt"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"sources"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"width"}},{kind:"Field",name:{kind:"Name",value:"height"}},{kind:"Field",name:{kind:"Name",value:"url"}}]}}]}}]}}]}}]}}]};var _a=i(3423),Ea=i(83468),Ma=i(55776),Ga=i(3030),Za=i(21729);var $a=i(81622),Ka=i(98474),Ya=i(10664),za=i(99703);const Va=e=>{return a=e,"NotFound"!==a?.__typename&&"GenericError"!==a?.__typename&&"Track"===e.__typename;var a},Wa=e=>e?e.filter((e=>Va(e.data))).map((e=>e.data.uri)):[],Ja=t.memo((function({strategy:e,uri:a}){const{data:i}=(n={uri:a,strategy:e},(0,Da.a)(Ba,n,s));var n,s;const r=i?.seoRecommended.items,c=(0,t.useMemo)((()=>r?.slice(0,Math.min(r.length,5))),[r]),d=(0,t.useCallback)((e=>e.uri),[]),m=(0,t.useMemo)((()=>[za.QD.TITLE,za.QD.ALBUM,za.QD.DURATION]),[]),k=(0,$a.g)(),g=(0,Be.v9)(pa.n5),p=(0,Be.v9)(Ya.rZ);(({category:e,action:a,remoteConfigProperty:i,defaultVariant:n,label:s,context:r,country:l,spt:c=!1,isAnonymous:d=!1})=>{const m=(0,o.W6)(i),u=(0,Za.s4)();(0,t.useEffect)((()=>{if(!m||!s)return;const i={category:e,action:a,variant:n??m,label:s,os:(0,Ma.y)(),...r&&{context:r},...l&&{country:l},...c&&{sp_t:(0,Ga.vQ)("sp_t")}};d?u.send((0,Ea.k)(i)):u.send((0,_a.x)(i))}),[m,s,e,a,r,l,c,d,u,n])})({category:"track_ilr_exposures",action:"track_page_visit",remoteConfigProperty:Ka.YS,label:"dwp",context:`${a}|${Wa(r)}`,country:g?p:"",spt:!0,isAnonymous:k});const x=(r||[])?.map((e=>Va(e.data)?{...e.data,provider:null,type:B.p.TRACK,uid:null}:{type:B.p.TRACK,uri:"",uid:null,provider:null})),h=(0,ge.Y)(a),{usePlayContextItem:v}=(0,K.n)({uri:h,pages:[{items:x}]},{featureIdentifier:"track"}),y=(0,t.useCallback)(((e,i)=>{if(!Va(e.data))return(0,E.jsx)(t.Fragment,{});const n=e.data;return(0,E.jsx)(wa,{index:i,contextUri:a,uri:n.uri,name:n.name,totalMilliseconds:n.duration.totalMilliseconds,imgUrl:n.albumOfTrack?.coverArt?.sources[0].url,isPlayable:n.playability.playable,artists:n.artists.items.map((e=>({uri:e.uri,id:e.id,name:e.profile.name}))),albumUri:n?.albumOfTrack?.uri,isExplicit:n.contentRating?.label===te.KS.Explicit,isMOGEFRestricted:n.contentRating?.label===te.KS.NineteenPlus,usePlayContextItem:v,playcount:parseInt(n.playcount||"0",10)},`${i}-${n.uri}`)}),[a,v]);return r?.length?(0,E.jsxs)("div",{className:Pa,children:[(0,E.jsxs)("div",{className:Ra,children:[(0,E.jsx)(l.D,{variant:"canon",semanticColor:"textBase",children:u.ag.get("playlist.extender.recommended.title")}),(0,E.jsx)(l.D,{variant:"mesto",paddingBottom:va.o78,children:u.ag.get("internal-link-recommender.based-on-this-song")})]}),(0,E.jsx)(za.Pv,{ariaLabel:u.ag.get("playlist.extender.recommended.title"),nrTracks:Math.min(r.length,5),rowPlaceholder:za.hU,tracks:c,renderRow:y,resolveUri:d,columns:m},"internal-link-recommender-track-list")]}):null}));var Ha=i(11277),Qa=i(25027);const qa=({album:e,index:a,artistURI:i})=>(0,E.jsx)(Ia.ZP,{value:"card",index:a,children:(0,E.jsx)(Qa.i,{index:a,latest:!1,showType:!0,...(0,Ha.B$)(e,i,e.name)})});var Xa=i(99034);const ei=({albums:e,artistName:a,artistId:i,artistUri:t,className:n})=>e?(0,E.jsx)(Ia.ZP,{value:"shelf/albums",children:(0,E.jsx)(Xa.P,{total:e.totalCount,title:u.ag.get("rich-page.popular-albums-by-artist",{artist:a}),seeAllUri:`${(0,Ha.GJ)(i)}:discography:${te.VZ.Album.toLowerCase()}`,seeAllLabel:u.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:n,children:(0,Ha.Hr)(e.items).map(((e,a)=>(0,E.jsx)(qa,{album:e,index:a,artistURI:t},e.uri)))})}):null;var ai=i(80202);const ii=({artistId:e,className:a,fansAlsoLike:i,title:t})=>(0,E.jsx)(Ia.ZP,{value:"shelf/fans-also-like",children:(0,E.jsx)(Xa.P,{total:i.length,title:t??u.ag.get("rich-page.fans-also-like"),seeAllUri:`${(0,Ha.GJ)(e)}:related`,className:a,children:i.map(((e,a)=>(0,E.jsx)(Ia.ZP,{value:"card",index:a,children:(0,E.jsx)(ai.I,{index:a,uri:e.uri,name:e.profile.name,images:e.visuals.avatarImage?.sources||[]})},e.uri)))})});var ti=i(2926);const ni=({artistName:e,artistUri:a,headerClassName:i,rowClassName:n,topTracks:s,topTracksTransformer:r,uri:c})=>{const o=(0,t.useMemo)((()=>s?.items.map((e=>r(e,c)))),[s?.items,r,c]),{usePlayContextItem:d}=(0,K.n)({uri:a},{featureIdentifier:"artist"});return o&&o.length>0?(0,E.jsxs)("div",{className:n,children:[(0,E.jsxs)("div",{children:[(0,E.jsx)(l.D,{variant:"mesto",children:u.ag.get("rich-page.popular-tracks")}),(0,E.jsx)(l.D,{as:"h2",variant:"canon",semanticColor:"textBase",className:i,children:e})]}),(0,E.jsx)(ti.k,{nrTracks:o.length,initialTracks:o,usePlayContextItem:d})]}):null};var si=i(93201);const ri=({artistName:e,artistId:a,artistUri:i,className:t,releases:n,artistImages:s})=>n?(0,E.jsx)(Ia.ZP,{value:"shelf/releases",children:(0,E.jsx)(Xa.P,{total:10,title:u.ag.get("rich-page.popular-releases-by-artist",{artist:e}),seeAllUri:`${(0,Ha.GJ)(a)}:discography:${te.VZ.Album.toLowerCase()}`,seeAllLabel:u.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:t,listRowHeaderProps:s?{title:e,pretitle:u.ag.get("artist-page.popular"),media:(0,si.o)(s,{desiredSize:48})||""}:null,children:n.items.map(((e,a)=>(0,E.jsx)(qa,{album:e,index:a,artistURI:i},e.uri)))})}):null,li=({artistId:e,artistName:a,artistUri:i,className:t,singles:n})=>n?(0,E.jsx)(Ia.ZP,{value:"shelf/singles-and-eps",children:(0,E.jsx)(Xa.P,{total:n.totalCount,title:u.ag.get("rich-page.popular-singles-and-eps-by-artist",{artist:a}),seeAllUri:`${(0,Ha.GJ)(e)}:discography:${te.VZ.Single.toLowerCase()}`,seeAllLabel:u.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:t,children:(0,Ha.Hr)(n.items).map(((e,a)=>(0,E.jsx)(qa,{album:e,index:a,artistURI:i},e.uri)))})}):null;var ci=i(2851),oi=i(57265),di=i(40436),mi=i(79461);const ui=e=>(e.items||[]).map((e=>({name:e.profile.name,images:(e.visuals.avatarImage?.sources||[]).map((e=>({url:e.url,width:e.width,height:e.height}))),uri:e.uri,id:e.id}))),ki=e=>(e||[]).map((e=>e.profile.name)),gi=({uri:e,track:a})=>{const i=(0,oi.o)(),n=(0,ka.k)(),m=(0,$a.g)(),j=(0,r.TH)(),S=(0,ci.k)({type:"locale",uri:e}),{firstArtist:f,otherArtists:A,albumOfTrack:O,duration:P,name:R}=a,U=O?.coverArt,F=O?.copyright.items,w=O?.courtesyLine,D=O?.date?.isoString,B=U?.extractedColors?.colorRaw.hex,_=(U?.sources||[]).map((e=>({url:e.url,width:e.width||void 0,height:e.height||void 0}))),Z={uri:O?.uri||"",name:O?.name||""},z=(0,o.W6)(ne.YS),V=ki(f.items),W=ki(A.items),J=ui(f),H=ui(A),Q=[...J,...H],q=f.items[0],X=a.albumOfTrack,ee=X?.playability?.playable,ie={artistId:q?.id,artistName:q?.profile?.name,artistUri:q?.uri},[se,re]=(0,t.useState)(!1),ke=(0,t.useCallback)((()=>{re(!se)}),[se]),pe=A&&A.items.length>5,{spec:xe,logger:he}=(0,ue.fU)(d.createDesktopTrackEventFactory,{data:{uri:e}}),ve=a.playability.playable,ye=(0,ge.Y)(e),{togglePlay:Ie,isPlaying:Ue,isActive:Fe}=(0,K.n)({uri:ye},{featureIdentifier:"track"}),[we,Be]=(0,$.Z)(e),_e=(0,t.useCallback)((async()=>{i({targetUri:e,intent:we?"unsave":"save",type:"click"});const a=xe.actionBarFactory().saveButtonFactory();he.logInteraction(we?a.hitRemoveLike({itemNoLongerLiked:e}):a.hitLike({itemToBeLiked:e}));try{await Be(!we)}catch{}}),[i,e,we,xe,he,Be]),Ee=(0,t.useCallback)((()=>(0,Y.Zs)({i18n:u.ag,trackArtistsList:[...V,...W].join(u.ag.getSeparator()),trackName:a.name,shouldLocalize:S})),[V,W,S,a.name]),Me=(0,t.useCallback)(((e,a)=>{he.logInteraction(xe.headerFactory().artistLinkFactory({position:a.position,uri:a.creator.uri}).hitUiNavigate({destination:a.creator.uri}))}),[he,xe]),Ge=(0,t.useCallback)((()=>{const a=(0,I.aK)({isPlaying:Ue,isActive:Fe,spec:xe.actionBarFactory().playButtonFactory(),logger:he,uri:e});Ie({loggingParams:a})}),[Fe,Ue,he,xe,Ie,e]),Ze=(0,t.useCallback)((()=>{he.logInteraction(xe.actionBarFactory().contextButtonFactory().hitUiReveal())}),[he,xe]);return(0,E.jsxs)("section",{"data-testid":"track-page",children:[(0,E.jsx)(ha.$,{children:Ee()}),(0,E.jsxs)(v.gF,{backgroundColor:B,children:[(0,E.jsxs)(y.W,{children:[(0,E.jsx)(b.$,{size:"md",onClick:Ge,disabled:!ve,isPlaying:Ue,uri:e}),(0,E.jsx)(N.i,{text:R,dragUri:e,dragLabel:R})]}),(0,E.jsx)(C._,{menu:(0,E.jsx)(h.$,{uri:e}),children:(0,E.jsx)(v.Oz,{dragUri:e,images:_,name:R,placeholderType:"album"})}),(0,E.jsxs)(v.sP,{children:[(0,E.jsx)(l.D,{variant:"mestoBold",children:u.ag.get("song")}),(0,E.jsx)(C._,{menu:(0,E.jsx)(h.$,{uri:e}),children:(0,E.jsx)(v.xd,{dragUri:e,dragLabel:R,children:R})}),(0,E.jsx)(v.QS,{creators:J,releaseDate:D,durationMilliseconds:P.totalMilliseconds,onCreatorClick:Me,isTrack:!0,album:Z})]})]}),(0,E.jsx)(k.o,{backgroundColor:B,children:(0,E.jsxs)(k.F,{children:[(0,E.jsx)(v.rn,{children:(0,E.jsx)(b.$,{onClick:Ge,isPlaying:Ue,disabled:!ve,size:"lg",uri:e})}),(0,E.jsx)(v.rn,{children:(0,E.jsx)(g.H,{isAdded:!!we,onClick:_e,disabled:!n,size:g.q.md})}),(0,E.jsx)(p.o,{uri:e,isFollowing:!!we,onFollow:_e,size:p.q.md}),(0,E.jsx)(C.ClickToggleContextMenu,{menu:(0,E.jsx)(h.$,{uri:e}),onShow:Ze,children:(0,E.jsx)(x.MoreButton,{label:u.ag.get("more.label.context",R)})})]})}),(0,E.jsxs)(ae,{children:[(0,E.jsxs)("div",{className:"contentSpacing",children:[(0,E.jsx)("div",{className:Ne,children:(0,E.jsx)(L.T,{render:({columnCount:a})=>(0,E.jsx)(xa,{albumArtists:Q,columnCount:a,uri:e})})}),le(z,j)&&(0,E.jsx)("div",{"data-testid":"canonical-pool-top",children:(0,E.jsx)(Ja,{strategy:te.JI.ContentOnly,uri:a.uri})}),oe(z,j)&&(0,E.jsx)("div",{"data-testid":"organic-pool-top",children:(0,E.jsx)(Ja,{strategy:te.JI.OrganicTraffic,uri:a.uri})}),(0,E.jsx)(ni,{artistName:q.profile.name,artistUri:q.uri,headerClassName:Te,rowClassName:Ne,topTracks:q.discography.topTracks,topTracksTransformer:di.X7,uri:a.uri}),(0,E.jsx)(ri,{className:Ce,releases:q?.discography?.popularReleasesAlbums,...ie}),(0,E.jsx)(ei,{albums:q?.discography?.albums,className:Ce,...ie}),(0,E.jsx)(li,{className:Ce,singles:q?.discography?.singles,...ie}),A&&(0,E.jsxs)(E.Fragment,{children:[(0,E.jsx)("div",{className:Se,children:A.items.map(((e,a)=>(0,E.jsx)(ri,{className:s()(Le,{[Ae]:a>4,[Oe]:se&&a>4}),releases:e.discography.popularReleasesAlbums,artistName:e.profile.name,artistId:e.id,artistUri:e.uri,artistImages:e.visuals.avatarImage?.sources},e.id)))}),pe&&(0,E.jsx)(c.o,{onClick:ke,className:Pe,children:(0,E.jsx)(l.D,{as:"h2",variant:"violaBold",children:se?u.ag.get("show_less"):u.ag.get("mwp.search.artists.all")})}),(0,E.jsx)(ii,{artistId:q.id,className:s()(Ce,{[fe]:A.items.length>0}),fansAlsoLike:q.relatedContent.relatedArtists.items,title:u.ag.get("artist-page.fansalsolike")})]}),X&&(0,E.jsx)(G,{art:X.coverArt?.sources[0],disabled:!ee||!n,LinkComponent:$e.default,name:X.name,type:X.type,size:M.LARGE,uri:X.uri}),(0,E.jsx)(Re,{richTrack:a})]}),(0,E.jsxs)("div",{className:"contentSpacing",children:[(0,E.jsxs)("div",{className:s()(je,{[be]:me(z,j)}),children:[(0,E.jsx)(T.k,{copyrights:F||[],courtesyLine:w}),!m&&(0,E.jsx)(De,{uri:e})]}),ce(z,j)&&(0,E.jsx)("div",{"data-testid":"canonical-pool-bottom",children:(0,E.jsx)(Ja,{strategy:te.JI.ContentOnly,uri:e})}),de(z,j)&&(0,E.jsx)("div",{"data-testid":"organic-pool-bottom",children:(0,E.jsx)(Ja,{strategy:te.JI.OrganicTraffic,uri:e})})]})]})]})},pi=(0,t.memo)((function(){const{trackId:e=""}=(0,r.UO)(),a=(0,m.tn)(e).toURI(),i=(0,mi.QN)({uri:a});return i.loading||"Track"!==i.data?.trackUnion?.__typename?(0,E.jsx)(j.h,{hasError:null!==i.error,errorMessage:u.ag.get("track-page.error")}):(0,E.jsx)(Z.fd,{surface:Z.Tg.TRACK,uris:[a,i.data.trackUnion.albumOfTrack?.uri??null],children:(0,E.jsx)(gi,{uri:a,track:i.data.trackUnion})})}))},61649:(e,a,i)=>{i.d(a,{k:()=>r});var t=i(64641);const n="rTMkDBDp47Eo12ZEQv4U";var s=i(4637);const r=({copyrights:e,courtesyLine:a})=>{const i=(e||[]).map(((e,a)=>{const i=e.text.replace(/^(\(C\)\s+)/,"").replace(/^(\(P\)\s+)/,"").replace(/^(©\s+)/,"").replace(/^(℗\s+)/,"");let n;return n="C"===e.type?"©":"P"===e.type?"℗":`(${e.type})`,(0,s.jsx)(t.D,{as:"p",variant:"finale",dir:"auto",children:`${n} ${i}`},a)}));return a&&i.unshift((0,s.jsx)(t.D,{as:"p",variant:"finale",dir:"auto",children:a},i.length)),(0,s.jsx)("div",{className:n,children:i})}},24949:(e,a,i)=>{i.d(a,{vI:()=>t});const t=(e,a)=>{const i=a?new URLSearchParams(a.search):void 0;return"1"===i?.get(e)}},96645:(e,a,i)=>{i.d(a,{k:()=>t});let t=function(e){return e.I18nSEO="i18nSEO",e.RTPTrackCredits="rtpv2p2",e.BlendParty="bp",e.BlendPartyV2="bpv2",e.VideoPodcastShowTitleTag="vidpodshow",e.I18nAdditionalPages="i18nap",e.IlrTrackCanonicalTop="ilr-track-canonical-top",e.IlrTrackCanonicalBottom="ilr-track-canonical-bottom",e.IlrTrackOrganicTop="ilr-track-organic-top",e.IlrTrackOrganicBottom="ilr-track-organic-bottom",e}({})}}]);
//# sourceMappingURL=xpui-routes-track-v2.js.map