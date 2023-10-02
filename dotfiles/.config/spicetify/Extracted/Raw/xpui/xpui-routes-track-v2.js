"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[4179],{70827:(e,a,i)=>{i.r(a),i.d(a,{default:()=>Ni});var t=i(59496),s=i(84875),n=i.n(s),r=i(97601),l=i(51697),c=i(6285),o=i(9990),d=i(75645),u=i(14887),m=i(30099),g=i(51431),k=i(7018),p=i(20456),y=i(29915),x=i(75132),v=i(68224),h=i(34198),N=i(40981),j=i(62768),b=i(94946);const I="o2TlnuNKxRO5RnB9BpHB",L="q0Ke_aAvTcc4dO4wCHQt",C="UlKUfS_GcROZmofuafOW",T="I5LORTI1u3A6VoUvRCBf",S="TS85Qkpioa31wR0p4kzT",A="yL1DLXBc05CR_ACv_NhA",f="k5kRkUyoz9znqg_SGOVQ";var O=i(67291),P=i(13475),R=i(56071),F=i(95195),U=i(35585),w=i(4637);let D=function(e){return e.SMALL="small",e.LARGE="large",e}({});const _=({art:e,disabled:a=!1,LinkComponent:i,name:t,size:s=D.SMALL,type:c,uri:o})=>{const d=e?[e]:[],g=s===D.SMALL?(0,P.R)(c):function(e){switch(e){case O.albumType.SINGLE:return m.ag.get("track-page.from-the-single");case O.albumType.EP:return m.ag.get("track-page.from-the-ep");case O.albumType.COMPILATION:return m.ag.get("track-page.from-the-compilation");case O.albumType.ALBUM:default:return m.ag.get("track-page.from-the-album")}}(c),k=(0,r.s0)();return(0,w.jsxs)("div",{className:n()(I,{[C]:s===D.SMALL,[L]:a}),children:[(0,w.jsx)("div",{className:T,children:(0,w.jsx)(R.O,{images:d,size:U.m$.SIZE_80,title:t,type:F.p.ALBUM})}),(0,w.jsxs)("div",{className:S,children:[(0,w.jsx)(l.D,{variant:s===D.SMALL?"mestoBold":"finale",children:g}),(0,w.jsx)(i,{to:o,children:(0,w.jsx)(l.D,{as:"div",className:A,variant:"balladBold",dir:"auto",children:t})})]}),(0,w.jsx)("div",{onClick:()=>{k((0,u.EC)(o).toURLPath(!0))},className:f})]})};var B=i(4635),E=i(13138),M=i(24966),G=i(16391);let Z=function(e){return e.LOADING="LOADING",e.LOADED="LOADED",e.UNAVAILABLE="UNAVAILABLE",e}({});const K=(0,G.Uy)(((e,a)=>{switch(a.type){case"LYRICS_LOADING":e[a.uri]={status:Z.LOADING};break;case"LYRICS_LOADED":e[a.uri]={status:Z.LOADED,data:a.response};break;case"LYRICS_ERROR":e[a.uri]={status:Z.UNAVAILABLE};break;default:throw new Error(`Unhandled lyrics action with type: ${a.type}`)}}));var Y=i(90326),$=i(70326),z=i(90395);const q={status:Z.LOADING},V={status:Z.UNAVAILABLE},W=t.createContext(void 0),J=({children:e,initialState:a={}})=>{const i=t.useReducer(K,a);return(0,w.jsx)(W.Provider,{value:i,children:e})},H=({uri:e,isAnonymous:a,imageForLyricsRequest:i})=>{const s=t.useContext(W);if(void 0===s)throw new Error("useTrackEntityLyrics must be used within a TrackEntityLyricsProvider");if(!e||!(0,u.wj)(e)||a)return V;const[n,r]=s,l=n[e];return l||(r({type:"LYRICS_LOADING",uri:e}),(async({trackUri:e,api:a,imageForLyricsRequest:i})=>{const t=(0,u.EC)(e);try{const e=await $.Zz.getTrackEntityLyrics(a||Y.b.getInstance(),t.id,i||"");return{hasLyrics:!0,syncType:e.lyrics.syncType,lyrics:e.lyrics.lines,provider:e.lyrics.provider,providerDisplayName:e.lyrics.providerDisplayName,providerLyricsId:e.lyrics.providerLyricsId,isRtlLanguage:e.lyrics.isRtlLanguage}}catch(e){if(e instanceof z.m&&404===e.status)return{hasLyrics:!1};throw e}})({trackUri:e,imageForLyricsRequest:i}).then((a=>{r({type:"LYRICS_LOADED",uri:e,response:a})})).catch((()=>{r({type:"LYRICS_ERROR",uri:e})})),q)};var Q=i(25639),X=i(46441),ee=i(46354),ae=i(90570);const ie=(e,a)=>(0,ae.vI)(ee.k.IlrTrackCanonicalTop,a)||e===X.Zn.CANONICAL_TOP_POSITION,te=(e,a)=>(0,ae.vI)(ee.k.IlrTrackCanonicalBottom,a)||e===X.Zn.CANONICAL_BOTTOM_POSITION,se=(e,a)=>(0,ae.vI)(ee.k.IlrTrackOrganicTop,a)||e===X.Zn.ORGANIC_TOP_POSITION,ne=(e,a)=>(0,ae.vI)(ee.k.IlrTrackOrganicBottom,a)||e===X.Zn.ORGANIC_BOTTOM_POSITION,re=(e,a)=>ie(e,a)||te(e,a)||se(e,a)||ne(e,a);X.Zn.DEFAULT,X.Zn.CONTROL,X.Zn.CANONICAL_TOP_POSITION,Q.JI.ContentOnly,X.Zn.CANONICAL_BOTTOM_POSITION,Q.JI.ContentOnly,X.Zn.ORGANIC_TOP_POSITION,Q.JI.OrganicTraffic,X.Zn.ORGANIC_BOTTOM_POSITION,Q.JI.OrganicTraffic;var le=i(34046),ce=i(97582),oe=i(95187),de=i(23419),ue=i(22040);const me="oTRKhYD0MZlNPm66W3Tw",ge="sc95MwPalcHwYGZ7j3xN",ke="zrCZCfYv4zZiB1HYv9i8",pe="RnlxIDmWcYTbbwNSJNjA",ye="SHkxfN1vy0wpRMP1hK7I",xe="COXBS6zLyyxKNYuEAzjZ",ve="pynMsudlBeLA8TZkPvmK",he="sR5IpdOUvoUGYKlC9Dk1",Ne="FHMr3WxshoYjZ7jd3YwI",je="Evcwc4KM2tf9xrLbfB8B",be="x4_dsi31Cx2SO1L0uYIj",Ie="euPDqfFEBILj9KHDNLC1",Le="x6FPRUKK40oDCPP7g6Ls",Ce="k3SPcfaKewjfdYumDcGw",Te="t9C7vRiN1OSC9uWfJEr0",Se="Onv6dO4lntCzKUqYa8PE",Ae=({richTrack:e})=>{const{search:a}=(0,r.TH)(),i=(0,t.useCallback)((()=>new URLSearchParams(a.slice(1)).get("highlight")||""),[a])(),{tracklistRef:s}=(0,ue.W)(),n=e.albumOfTrack,l=(0,de.Y)(n?.uri||""),{usePlayContextItem:c}=(0,E.n)({uri:l},{featureIdentifier:"album"}),o=(0,t.useMemo)((()=>({items:[],totalCount:0})),[]);return n?(0,w.jsx)("div",{ref:s,className:he,children:(0,w.jsx)(oe.L,{ariaLabel:n.name,nrTracks:n.tracks.totalCount,albumUri:n.uri,highlightUri:i,discs:o,usePlayContextItem:c,hasHeaderRow:!1})}):null};var fe=i(46927),Oe=i(98440),Pe=i(99750),Re=i(40006),Fe=i(64689),Ue=i(26473),we=i(18112),De=i(7442);const _e=t.memo((function({uri:e,togglePlay:a,isPlaying:i,isActive:s,spec:n,logger:r,backgroundColor:l,name:c,isPlayable:o}){const d=(0,we.o)(),u=(0,De.k)(),[p,y]=(0,Fe.Z)(e),x=(0,t.useCallback)((async()=>{d({targetUri:e,intent:p?"unsave":"save",type:"click"});const a=n.saveButtonFactory();r.logInteraction(p?a.hitRemoveLike({itemNoLongerLiked:e}):a.hitLike({itemToBeLiked:e}));try{await y(!p)}catch{}}),[d,e,p,n,r,y]),j=(0,t.useCallback)((()=>{const t=(0,h.aK)({isPlaying:i,isActive:s,spec:n.playButtonFactory(),logger:r,uri:e});a({loggingParams:t})}),[s,i,r,n,a,e]),b=(0,t.useCallback)((()=>{r.logInteraction(n.contextButtonFactory().hitUiReveal())}),[r,n]),I=(0,Ue.j)();return(0,w.jsx)(fe.o,{backgroundColor:l,children:(0,w.jsxs)(fe.F,{children:[(0,w.jsx)(k.rn,{children:(0,w.jsx)(v.$,{onClick:j,isPlaying:i,disabled:!o,size:I,uri:e})}),(0,w.jsx)(k.rn,{children:(0,w.jsx)(Oe.H,{isAdded:!!p,onClick:x,disabled:!u,size:I})}),(0,w.jsx)(Pe.o,{uri:e,isFollowing:!!p,onFollow:x,size:I}),(0,w.jsx)(N.ClickToggleContextMenu,{menu:(0,w.jsx)(g.$,{uri:e}),onShow:b,children:(0,w.jsx)(Re.MoreButton,{label:m.ag.get("more.label.context",c),size:I})})]})})})),Be="OH5mnpJIVCJozYM3raMt",Ee="etw0slM6uVrCi5RR3iDi",Me=({padded:e,providerDisplayName:a})=>a?(0,w.jsx)(l.D,{as:"p",dir:"auto",variant:"finale",className:`${Be} ${e?Ee:""}`,children:m.ag.get("web-player.lyrics.providedBy",a)}):null,Ge=({uri:e,imageForLyricsRequest:a})=>{const{data:i}=H({uri:e,imageForLyricsRequest:a});return i?.hasLyrics?(0,w.jsx)(Me,{providerDisplayName:i.providerDisplayName}):null};var Ze=i(83792),Ke=i(98484);const Ye="QhDsXG1Gmo7XmQWLggAO",$e="bZgWQj7UxvK8GYKWDA7N",ze="AW61P3tnW5cKJCWtbhFh",qe=({buttonText:e,onSecondaryButtonClick:a,onPrimaryButtonClick:i,secondaryButtonText:t,text:s})=>(0,w.jsxs)("div",{className:Ye,"data-testid":"static-activation-trigger",children:[(0,w.jsx)(l.D,{className:$e,variant:"cello",children:s}),(0,w.jsxs)("div",{className:ze,children:[(0,w.jsx)(c.o,{onClick:a,semanticColor:"textBase",children:t}),(0,w.jsx)(Ke.D,{onClick:i,colorSet:"invertedLight",children:e})]})]});var Ve=i(67490);const We="T1nqQ4HEh3heHy4RCCKa",Je="L8zjshPVgUMXyZR4FtOk",He="YMn1FWcFmOz9osBrNvhF",Qe="Inbyq3TnvKDOJtcKFTDQ",Xe="lWk5se4WETUOJwaEb8D6",ea="i8DyQbWCmDV_8N5XGJQT",aa="t5WPFlGTY6GCd9UOFfLu",ia="AGQ3wRyMVK1odq860qnT",ta="ZX_r7uZgPgssaUplfpxT",sa="qrqctaPu2XBpxsw23nPX",na="XnWidTagai3nQwMPxIMF";var ra=i(68466),la=i(90807);let ca=function(e){return e.SMALL="small",e.LARGE="large",e}({});const oa=e=>{const{disabled:a,images:i,LinkComponent:t,name:s,size:c,uri:o,enableI18nRoutes:d,enableI18nAdditionalPages:g}=e,k=c===ca.SMALL,p=(0,r.s0)(),y=(0,u.EC)(o),x=y?.type,v=m.ag.getUrlLocale(),h=(0,ra.S9)({localeFeatureFlag:d,entityFeatureFlag:g,urlLocale:v,entity:x,type:"link"});return(0,w.jsxs)("div",{className:n()(Je,{[He]:a}),"data-testid":"track-artist-link-card",children:[(0,w.jsx)(R.O,{shape:R.K.CIRCLE,images:i,size:U.m$.SIZE_80,title:s,type:F.p.ARTIST}),(0,w.jsxs)("div",{className:n()(Xe,{[ea]:k}),children:[(0,w.jsx)(l.D,{variant:"mestoBold",className:Qe,children:m.ag.get("card.tag.artist")}),(0,w.jsx)(t,{to:o,children:(0,w.jsx)(l.D,{as:"div",dir:"ltr",className:aa,variant:"balladBold",children:s})})]}),(0,w.jsx)("div",{onClick:()=>{const e=y?.toURL(`/${la.F0}${v}/`);if(y){const a=h?e:y.toURLPath(!0);p(a)}},className:ia})]})},da=({size:e=ca.LARGE,disabled:a=!1,enableI18nRoutes:i,enableI18nAdditionalPages:s,...r})=>{const[o,d]=(0,t.useState)(!1),u=(0,t.useCallback)((()=>{d(!o)}),[o]),g=r.artists;return(0,w.jsxs)("div",{"data-testid":"track-artist-link-card-container",children:[(0,w.jsx)("div",{className:We,children:g.map(((t,l)=>(0,w.jsx)("div",{className:n()({[sa]:o&&l>5,[ta]:l>5}),children:(0,w.jsx)(oa,{name:t.name,uri:t.uri,images:t.images,size:e,LinkComponent:r.LinkComponent,disabled:a,enableI18nRoutes:i,enableI18nAdditionalPages:s},t.id)},`${t.uri}-${l}`)))}),g.length>6&&(0,w.jsx)(c.o,{onClick:u,className:na,children:(0,w.jsx)(l.D,{as:"p",variant:"violaBold",children:o?m.ag.get("show_less"):m.ag.get("mwp.search.artists.all")})})]})};var ua=i(13204);const ma="EaTxqhHk6J4ecKHwpY5m",ga="dUQl9yd5x_1oWk4L0Ntm",ka="xt5C47eHPYNiriMJxGnC",pa=({words:e})=>(0,w.jsx)(l.D,{as:"p",dir:"auto",variant:"ballad",className:ka,children:e});var ya=i(40761);const xa=({data:e,eventSender:a,isPlaying:i,playbackId:s,uri:n})=>{const{lyrics:r=[],provider:c,providerLyricsId:o,syncType:d}=e,u=function(e){const{uri:a,provider:i,providerLyricsId:s,syncType:n,eventSender:r,isPlaying:l,playbackId:c}=e,[o,d]=(0,t.useState)(!1),u=(0,t.useMemo)((()=>(0,ya.N)({lyrics_format:"track-page",track_uri:a,provider:i,provider_lyrics_id:s,sync_type:n,playback_id:l?c:void 0})),[a,i,s,n,l,c]);return(0,t.useCallback)((()=>{o||(r?.send(u),d(!0))}),[u,r,o])}({uri:n,provider:c,providerLyricsId:o,syncType:d,eventSender:a,isPlaying:i,playbackId:s});return(0,t.useEffect)((()=>{u()}),[u]),(0,w.jsxs)("div",{className:ma,children:[(0,w.jsx)(l.D,{as:"h2",variant:"canon",semanticColor:"textBase",className:ga,children:m.ag.get("web-player.lyrics.title")}),r.map((({words:e},a)=>(0,w.jsx)(pa,{words:e},`lyrics-seo-line-${a}`)))]})};var va=i(51087),ha=i(28425),Na=i(54329);const ja=({uri:e,imageForLyricsRequest:a})=>{const{data:i}=H({uri:e,imageForLyricsRequest:a}),t=(0,Na.s4)(),{isPaused:s,currentTrackUri:n,playbackId:r}=(0,va.Y)((e=>({isPaused:e?.isPaused,currentTrackUri:e?.item?.uri,playbackId:e?.playbackId})),ha.V),l=!s&&n===e;return i&&i?.hasLyrics?(0,w.jsx)(xa,{data:i,uri:e,eventSender:t,isPlaying:l,playbackId:r}):null};var ba=i(65545),Ia=i(7554);const La=e=>{const{albumArtists:a,columnCount:i,imageForLyricsRequest:s,uri:r}=e,l=i-2,c={"--column-count":i,"--left-column-end":l-2,"--right-column-start":l},{isAnonymous:o}=(0,Ze.v9)(Ia.Gg),d=(0,De.k)(),{data:u,status:g}=H({uri:r,isAnonymous:o,imageForLyricsRequest:s}),k=!!u&&u.hasLyrics&&g!==Z.UNAVAILABLE||o,p=(0,Ze.v9)(ba.br),y=(0,Ze.v9)(ba.yE);return(0,w.jsxs)(t.Suspense,{fallback:null,children:[k&&(0,w.jsx)("div",{className:n()(ke,{[pe]:i>5}),style:{...c},"data-testid":"lyrics-container",children:o?(0,w.jsx)(qe,{buttonText:m.ag.get("sign_up"),secondaryButtonText:m.ag.get("login"),text:m.ag.get("track-page.sign-in-to-view-lyrics"),onPrimaryButtonClick:ua.L6,onSecondaryButtonClick:ua.h$}):(0,w.jsx)(ja,{uri:r,imageForLyricsRequest:s})}),(0,w.jsx)("div",{className:n()(me,{[ge]:i>5&&k}),style:{...c},children:(0,w.jsx)(da,{artists:a,LinkComponent:Ve.default,disabled:!d,enableI18nRoutes:p,enableI18nAdditionalPages:y})})]})};var Ca=i(70304),Ta=i(49261),Sa=i(70231),Aa=i(46447),fa=i(4085),Oa=i(29553),Pa=i(15644),Ra=i(54110),Fa=i(57161),Ua=i(70350),wa=i(72390),Da=i(17106),_a=i(5352),Ba=i(90216),Ea=i(490),Ma=i(19341);const Ga="Z9Dr8PkXFtlO8KnnDcxp",Za="Bm0LUMlhVIcF5qusgdUP",Ka="GIyB7JDkRwjtVL6PSBbg",Ya="whTIka0YYAkqhqrs26Wa",$a=t.memo((function({uri:e,name:a,imgUrl:i,artists:t,isExplicit:s,index:n,albumUri:r,contextUri:l,isPlayable:c,usePlayContextItem:o,isMOGEFRestricted:d,totalMilliseconds:u,playcount:k}){const{isActive:p,isPlaying:y,triggerPlay:x,togglePlay:v}=o({uri:e,index:n}),h=(0,Ra._)(e),N=(0,Da.k)(e,c),j=t.map((e=>e.name)).join(m.ag.getSeparator()),{badges:b,hasBadges:I}=(0,Fa.r)({isMOGEFRestricted:d,downloadAvailability:h,isExplicit:s}),L=t.map((e=>e.name)).join(m.ag.getSeparator()),C=(0,wa.E)();return(0,w.jsx)(Pa.ZP,{value:"row",index:n,children:(0,w.jsx)(Sa._,{menu:(0,w.jsx)(g.$,{uri:e,albumUri:r,artists:t,contextUri:l}),children:(0,w.jsxs)(Ma.c,{uri:e,contextUri:l,isPlayable:N,onTriggerPlay:(e,a)=>{x({loggingParams:a})},isActive:p,index:n,ariaRowIndex:n,dragMetadata:{name:a,createdBy:j},children:[(0,w.jsxs)(Ba.vZ,{ariaColIndex:0,children:[(0,w.jsx)(Ba.VG,{uri:e,src:i,onClick:(e,a)=>{v({loggingParams:a})},isLocked:!1,isPlaying:y,isActive:p,playAriaLabel:m.ag.get("tracklist.a11y.play",a,j)}),(0,w.jsxs)(Ba.vm,{children:[(0,w.jsx)(_a.G,{uri:e,enabled:C,className:Ka,children:(0,w.jsx)(Ba.Wh,{titleText:a,children:a})}),I&&(0,w.jsxs)(Ba.g3,{children:[b.download&&(0,w.jsx)(Aa.G,{size:16}),b.explicit&&(0,w.jsx)(fa.N,{}),b.nineteen&&(0,w.jsx)(Oa.X,{className:Ya,size:16})]}),(0,w.jsx)(Ba.K9,{children:(0,w.jsx)(Ba.T6,{artists:t})})]})]}),(0,w.jsx)(Ba.UA,{ariaColIndex:1,children:(0,w.jsx)(Ea.B,{playcount:k})}),(0,w.jsxs)(Ba.mU,{ariaColIndex:2,children:[(0,w.jsx)(Ua.f,{uri:e}),(0,w.jsx)(Ba.A$,{duration:u}),(0,w.jsx)(Ba.Zv,{menu:(0,w.jsx)(g.$,{uri:e,albumUri:r,contextUri:l,artists:t}),label:m.ag.get("more.label.track",a,L)})]})]})})})}),((e,a)=>e.uri===a.uri&&e.index===a.index));var za=i(89723);const qa={kind:"Document",definitions:[{kind:"OperationDefinition",operation:"query",name:{kind:"Name",value:"internalLinkRecommenderTrack"},variableDefinitions:[{kind:"VariableDefinition",variable:{kind:"Variable",name:{kind:"Name",value:"uri"}},type:{kind:"NonNullType",type:{kind:"NamedType",name:{kind:"Name",value:"ID"}}}},{kind:"VariableDefinition",variable:{kind:"Variable",name:{kind:"Name",value:"strategy"}},type:{kind:"NamedType",name:{kind:"Name",value:"SEORankingStrategy"}}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"seoRecommended"},arguments:[{kind:"Argument",name:{kind:"Name",value:"seoRecommendedInput"},value:{kind:"ObjectValue",fields:[{kind:"ObjectField",name:{kind:"Name",value:"strategy"},value:{kind:"Variable",name:{kind:"Name",value:"strategy"}}},{kind:"ObjectField",name:{kind:"Name",value:"uri"},value:{kind:"Variable",name:{kind:"Name",value:"uri"}}}]}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"items"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"data"},selectionSet:{kind:"SelectionSet",selections:[{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"GenericError"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"message"}}]}},{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"NotFound"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"message"}},{kind:"Field",name:{kind:"Name",value:"uri"}}]}},{kind:"FragmentSpread",name:{kind:"Name",value:"ilrTrackData"}}]}}]}}]}}]}},{kind:"FragmentDefinition",name:{kind:"Name",value:"ilrTrackData"},typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Track"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Track"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"__typename"}},{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"name"}},{kind:"Field",name:{kind:"Name",value:"artists"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"items"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"profile"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"name"}}]}}]}}]}},{kind:"Field",name:{kind:"Name",value:"duration"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"totalMilliseconds"}}]}},{kind:"Field",name:{kind:"Name",value:"contentRating"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"label"}}]}},{kind:"Field",name:{kind:"Name",value:"playability"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"playable"}}]}},{kind:"Field",name:{kind:"Name",value:"playcount"}},{kind:"Field",name:{kind:"Name",value:"albumOfTrack"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"id"}},{kind:"Field",name:{kind:"Name",value:"coverArt"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"sources"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"width"}},{kind:"Field",name:{kind:"Name",value:"height"}},{kind:"Field",name:{kind:"Name",value:"url"}}]}}]}}]}}]}}]}}]};var Va=i(21324),Wa=i(35960),Ja=i(47948),Ha=i(60168),Qa=i(36342);const Xa=e=>{return a=e,"NotFound"!==a?.__typename&&"GenericError"!==a?.__typename&&"Track"===e.__typename;var a},ei=e=>e?e.filter((e=>Xa(e.data))).map((e=>e.data.uri)):[],ai=t.memo((function({strategy:e,uri:a}){const{data:i}=(s={uri:a,strategy:e},(0,za.a)(qa,s,n));var s,n;const r=i?.seoRecommended.items,c=(0,t.useMemo)((()=>r?.slice(0,Math.min(r.length,5))),[r]),o=(0,t.useCallback)((e=>e.uri),[]),d=(0,t.useMemo)((()=>[Qa.QD.TITLE,Qa.QD.ALBUM,Qa.QD.DURATION]),[]),u=(0,Wa.g)(),g=(0,Ze.v9)(Ia.n5),k=(0,Ze.v9)(Ha.rZ);(0,Va.M)({category:"track_ilr_exposures",action:"track_page_visit",remoteConfigProperty:Ja.YSd,label:"dwp",context:`${a}|${ei(r)}`,country:g?k:"",spt:!0,isAnonymous:u});const p=(r||[])?.map((e=>Xa(e.data)?{...e.data,provider:null,type:F.p.TRACK,uid:null}:{type:F.p.TRACK,uri:"",uid:null,provider:null})),y=(0,de.Y)(a),{usePlayContextItem:x}=(0,E.n)({uri:y,pages:[{items:p}]},{featureIdentifier:"track"}),v=(0,t.useCallback)(((e,i)=>{if(!Xa(e.data))return(0,w.jsx)(t.Fragment,{});const s=e.data;return(0,w.jsx)($a,{index:i,contextUri:a,uri:s.uri,name:s.name,totalMilliseconds:s.duration.totalMilliseconds,imgUrl:s.albumOfTrack?.coverArt?.sources[0].url,isPlayable:s.playability.playable,artists:s.artists.items.map((e=>({uri:e.uri,id:e.id,name:e.profile.name}))),albumUri:s?.albumOfTrack?.uri,isExplicit:s.contentRating?.label===Q.KS.Explicit,isMOGEFRestricted:s.contentRating?.label===Q.KS.NineteenPlus,usePlayContextItem:x,playcount:parseInt(s.playcount||"0",10)},`${i}-${s.uri}`)}),[a,x]);return r?.length?(0,w.jsxs)("div",{className:Ga,children:[(0,w.jsxs)("div",{className:Za,children:[(0,w.jsx)(l.D,{variant:"canon",semanticColor:"textBase",children:m.ag.get("playlist.extender.recommended.title")}),(0,w.jsx)(l.D,{variant:"mesto",paddingBottom:Ta.o7,children:m.ag.get("internal-link-recommender.based-on-this-song")})]}),(0,w.jsx)(Qa.Pv,{ariaLabel:m.ag.get("playlist.extender.recommended.title"),nrTracks:Math.min(r.length,5),rowPlaceholder:Qa.hU,tracks:c,renderRow:v,resolveUri:o,columns:d},"internal-link-recommender-track-list")]}):null}));var ii=i(51653),ti=i(28489);const si=({album:e,index:a,artistURI:i})=>(0,w.jsx)(Pa.ZP,{value:"card",index:a,children:(0,w.jsx)(ti.i,{index:a,latest:!1,showType:!0,...(0,ii.B$)(e,i,e.name)})});var ni=i(854);const ri=({albums:e,artistName:a,artistId:i,artistUri:t,className:s})=>e?(0,w.jsx)(Pa.ZP,{value:"shelf/albums",children:(0,w.jsx)(ni.P,{total:e.totalCount,title:m.ag.get("rich-page.popular-albums-by-artist",{artist:a}),seeAllUri:`${(0,ii.GJ)(i)}:discography:${Q.VZ.Album.toLowerCase()}`,seeAllLabel:m.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:s,children:(0,ii.Hr)(e.items).map(((e,a)=>(0,w.jsx)(si,{album:e,index:a,artistURI:t},e.uri)))})}):null;var li=i(53778);const ci=({artistId:e,className:a,fansAlsoLike:i,title:t})=>(0,w.jsx)(Pa.ZP,{value:"shelf/fans-also-like",children:(0,w.jsx)(ni.P,{total:i.length,title:t??m.ag.get("rich-page.fans-also-like"),seeAllUri:`${(0,ii.GJ)(e)}:related`,className:a,children:i.map(((e,a)=>(0,w.jsx)(Pa.ZP,{value:"card",index:a,children:(0,w.jsx)(li.I,{index:a,uri:e.uri,name:e.profile.name,images:e.visuals.avatarImage?.sources||[]})},e.uri)))})});var oi=i(36127);const di=({artistName:e,artistUri:a,headerClassName:i,rowClassName:s,topTracks:n,topTracksTransformer:r,uri:c})=>{const o=(0,t.useMemo)((()=>n?.items.map((e=>r(e,c)))),[n?.items,r,c]),{usePlayContextItem:d}=(0,E.n)({uri:a},{featureIdentifier:"artist"});return o&&o.length>0?(0,w.jsxs)("div",{className:s,children:[(0,w.jsxs)("div",{children:[(0,w.jsx)(l.D,{variant:"mesto",children:m.ag.get("rich-page.popular-tracks")}),(0,w.jsx)(l.D,{as:"h2",variant:"canon",semanticColor:"textBase",className:i,children:e})]}),(0,w.jsx)(oi.k,{nrTracks:o.length,initialTracks:o,usePlayContextItem:d})]}):null},ui=({artistName:e,artistId:a,artistUri:i,className:t,releases:s,artistImages:n})=>s?(0,w.jsx)(Pa.ZP,{value:"shelf/releases",children:(0,w.jsx)(ni.P,{total:10,title:m.ag.get("rich-page.popular-releases-by-artist",{artist:e}),seeAllUri:`${(0,ii.GJ)(a)}:discography:${Q.VZ.Album.toLowerCase()}`,seeAllLabel:m.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:t,listRowHeaderProps:n?{title:e,pretitle:m.ag.get("artist-page.popular"),media:(0,ce.o)(n,{desiredSize:48})||""}:null,children:s.items.map(((e,a)=>(0,w.jsx)(si,{album:e,index:a,artistURI:i},e.uri)))})}):null,mi=({artistId:e,artistName:a,artistUri:i,className:t,singles:s})=>s?(0,w.jsx)(Pa.ZP,{value:"shelf/singles-and-eps",children:(0,w.jsx)(ni.P,{total:s.totalCount,title:m.ag.get("rich-page.popular-singles-and-eps-by-artist",{artist:a}),seeAllUri:`${(0,ii.GJ)(e)}:discography:${Q.VZ.Single.toLowerCase()}`,seeAllLabel:m.ag.get("shelf.see-all"),alwaysShowSeeAll:!0,className:t,children:(0,ii.Hr)(s.items).map(((e,a)=>(0,w.jsx)(si,{album:e,index:a,artistURI:i},e.uri)))})}):null;var gi=i(72951),ki=i(84132),pi=i(65186),yi=i(54819);const xi=e=>(e.items||[]).map((e=>({name:e.profile.name,images:(e.visuals.avatarImage?.sources||[]).map((e=>({url:e.url,width:e.width,height:e.height}))),uri:e.uri,id:e.id}))),vi=e=>(e||[]).map((e=>e.profile.name)),hi=({uri:e,track:a})=>{const i=(0,De.k)(),s=(0,Wa.g)(),u=(0,r.TH)(),x=(0,gi.k)({type:"locale",uri:e}),{firstArtist:I,otherArtists:L,albumOfTrack:C,duration:T,name:S}=a,A=C?.coverArt,f=C?.copyright.items,O=C?.courtesyLine,P=C?.date?.isoString,R=A?.extractedColors?.colorRaw.hex,F=(A?.sources||[]).map((e=>({url:e.url,width:e.width||void 0,height:e.height||void 0}))),U={uri:C?.uri||"",name:C?.name||""},B=(0,o.W6)(X.YS),G=(0,pi.GA)(),Z=vi(I.items),K=vi(L.items),Y=xi(I),$=xi(L),z=[...Y,...$],q=I.items[0],V=a.albumOfTrack,W=V?.playability?.playable,H={artistId:q?.id,artistName:q?.profile?.name,artistUri:q?.uri},ee=a.albumOfTrack?.coverArt?.sources,ae=(0,ce.o)(ee||void 0,{desiredLabel:"large",desiredSize:600})??ee?.[0]?.url??"",[oe,ue]=(0,t.useState)(!1),me=(0,t.useCallback)((()=>{ue(!oe)}),[oe]),ge=L&&L.items.length>5,{spec:ke,logger:pe}=(0,le.fU)(d.createDesktopTrackEventFactory,{data:{uri:e}}),he=a.playability.playable,fe=(0,de.Y)(e),{togglePlay:Oe,isPlaying:Pe,isActive:Re}=(0,E.n)({uri:fe},{featureIdentifier:"track"}),Fe=(0,t.useCallback)((()=>(0,M.Zs)({i18n:m.ag,trackArtistsList:[...Z,...K].join(m.ag.getSeparator()),trackName:a.name,shouldLocalize:x})),[Z,K,x,a.name]),Ue=(0,t.useCallback)(((e,a)=>{pe.logInteraction(ke.headerFactory().artistLinkFactory({position:a.position,uri:a.creator.uri}).hitUiNavigate({destination:a.creator.uri}))}),[pe,ke]),we=(0,t.useCallback)((()=>{const a=(0,h.aK)({isPlaying:Pe,isActive:Re,spec:ke.actionBarFactory().playButtonFactory(),logger:pe,uri:e});Oe({loggingParams:a})}),[Re,Pe,pe,ke,Oe,e]);return(0,w.jsxs)("section",{"data-testid":"track-page",children:[(0,w.jsx)(Ca.$,{children:Fe()}),(0,w.jsxs)(k.gF,{backgroundColor:R,children:[(0,w.jsxs)(p.W,{children:[(0,w.jsx)(v.$,{size:"medium",onClick:we,disabled:!he,isPlaying:Pe,uri:e}),(0,w.jsx)(y.i,{text:S,dragUri:e,dragLabel:S})]}),(0,w.jsx)(N._,{menu:(0,w.jsx)(g.$,{uri:e}),children:(0,w.jsx)(k.Oz,{dragUri:e,images:F,name:S,placeholderType:"album"})}),(0,w.jsxs)(k.sP,{children:[(0,w.jsx)(l.D,{variant:"mestoBold",children:m.ag.get("song")}),(0,w.jsx)(N._,{menu:(0,w.jsx)(g.$,{uri:e}),children:(0,w.jsx)(k.xd,{dragUri:e,dragLabel:S,children:S})}),(0,w.jsx)(k.QS,{creators:Y,releaseDate:P,durationMilliseconds:T.totalMilliseconds,onCreatorClick:Ue,isTrack:!0,album:U})]})]}),(0,w.jsx)(_e,{uri:e,togglePlay:Oe,isPlaying:Pe,isActive:Re,spec:(0,t.useMemo)((()=>ke.actionBarFactory()),[ke]),logger:pe,backgroundColor:R,name:S,isPlayable:he}),(0,w.jsxs)(J,{children:[(0,w.jsxs)("div",{className:"contentSpacing",children:[(0,w.jsx)("div",{className:ye,children:(0,w.jsx)(b.T,{render:({columnCount:a})=>(0,w.jsx)(La,{imageForLyricsRequest:ae,albumArtists:z,columnCount:a,uri:e})})}),ie(B,u)&&(0,w.jsx)("div",{"data-testid":"canonical-pool-top",children:(0,w.jsx)(ai,{strategy:Q.JI.ContentOnly,uri:a.uri})}),se(B,u)&&(0,w.jsx)("div",{"data-testid":"organic-pool-top",children:(0,w.jsx)(ai,{strategy:Q.JI.OrganicTraffic,uri:a.uri})}),(0,w.jsx)(di,{artistName:q.profile.name,artistUri:q.uri,headerClassName:je,rowClassName:ye,topTracks:q.discography.topTracks,topTracksTransformer:ki.X7,uri:a.uri}),(0,w.jsx)(ui,{className:Ne,releases:q?.discography?.popularReleasesAlbums,...H}),(0,w.jsx)(ri,{albums:q?.discography?.albums,className:Ne,...H}),(0,w.jsx)(mi,{className:Ne,singles:q?.discography?.singles,...H}),L&&(0,w.jsxs)(w.Fragment,{children:[(0,w.jsx)("div",{className:Ie,children:L.items.map(((e,a)=>(0,w.jsx)(ui,{className:n()(be,{[Ce]:a>4,[Te]:oe&&a>4}),releases:e.discography.popularReleasesAlbums,artistName:e.profile.name,artistId:e.id,artistUri:e.uri,artistImages:e.visuals.avatarImage?.sources},e.id)))}),ge&&(0,w.jsx)(c.o,{onClick:me,className:Se,children:(0,w.jsx)(l.D,{as:"h2",variant:"violaBold",children:oe?m.ag.get("show_less"):m.ag.get("mwp.search.artists.all")})}),(0,w.jsx)(ci,{artistId:q.id,className:n()(Ne,{[Le]:L.items.length>0}),fansAlsoLike:q.relatedContent.relatedArtists.items,title:m.ag.get("artist-page.fansalsolike")})]}),V&&(0,w.jsx)(_,{art:V.coverArt?.sources[0],disabled:!W||!i,LinkComponent:Ve.default,name:V.name,type:V.type,size:D.LARGE,uri:V.uri}),(0,w.jsx)(Ae,{richTrack:a})]}),(0,w.jsxs)("div",{className:"contentSpacing",children:[(0,w.jsxs)("div",{className:n()(xe,{[ve]:re(B,u)}),children:[(0,w.jsx)(j.k,{copyrights:f||[],courtesyLine:O}),!s&&(0,w.jsx)(Ge,{uri:e,imageForLyricsRequest:ae})]}),te(B,u)&&(0,w.jsx)("div",{"data-testid":"canonical-pool-bottom",children:(0,w.jsx)(ai,{strategy:Q.JI.ContentOnly,uri:e})}),ne(B,u)&&(0,w.jsx)("div",{"data-testid":"organic-pool-bottom",children:(0,w.jsx)(ai,{strategy:Q.JI.OrganicTraffic,uri:e})}),G&&(0,w.jsx)(pi.qj,{title:m.ag.get("generative-ai.track.title")})]})]})]})},Ni=(0,t.memo)((function(){const{trackId:e=""}=(0,r.UO)(),a=(0,u.tn)(e).toURI(),i=(0,yi.QN)({uri:a});return i.loading||"Track"!==i.data?.trackUnion?.__typename?(0,w.jsx)(x.h,{hasError:null!==i.error,errorMessage:m.ag.get("track-page.error")}):(0,w.jsx)(B.fd,{surface:B.Tg.TRACK,uris:[a,i.data.trackUnion.albumOfTrack?.uri??null],children:(0,w.jsx)(hi,{uri:a,track:i.data.trackUnion})})}))},21324:(e,a,i)=>{i.d(a,{M:()=>d});var t=i(59496),s=i(94823),n=i(24619),r=i(9990),l=i(46584),c=i(73748),o=i(54329);const d=({category:e,action:a,remoteConfigProperty:i,defaultVariant:d,label:u,context:m,country:g,spt:k=!1,isAnonymous:p=!1})=>{const y=(0,r.W6)(i),x=(0,o.s4)();(0,t.useEffect)((()=>{if(!y||!u)return;const i={category:e,action:a,variant:d??y,label:u,os:(0,l.y)(),...m&&{context:m},...g&&{country:g},...k&&{sp_t:(0,c.vQ)("sp_t")}};p?x.send((0,n.k)(i)):x.send((0,s.x)(i))}),[y,u,e,a,m,g,k,p,x,d])}}}]);
//# sourceMappingURL=xpui-routes-track-v2.js.map