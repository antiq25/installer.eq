"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[8736],{96422:(e,t,n)=>{n.d(t,{T:()=>u});var a=n(90784),i=n(72843),r=n(88354),l=n(12640),o=n(7018);const s="profile-editImage-imageContainer",c="profile-editImage-editImageButtonContainer";var d=n(4637);const u=function({onClick:e,name:t,images:n,canEdit:u,placeholderType:m,shape:h=o.Kc.SQUARE,dragUri:g=""}){const[p,C]=(0,i.R)(n),b=(0,r.VO)(p,C)===r.KO.loaded,k=(0,a.O)([g],t);return(0,d.jsxs)("div",{className:s,"data-testid":`${m}-image`,draggable:!!g,onDragStart:k,children:[(0,d.jsx)(o.Oe,{loading:"eager",name:t,images:n,placeholderType:m,shape:h}),u&&(0,d.jsx)("div",{className:c,children:(0,d.jsx)(l.F,{overlay:b,onClick:e,rounded:h===o.Kc.CIRCLE})})]})}},39815:(e,t,n)=>{n.d(t,{k:()=>c});var a=n(84875),i=n.n(a),r=n(9990),l=n(17237),o=n(47948),s=n(4637);const c=({children:e})=>{const t=(0,r.W6)(o.vyX,{loadingValue:!1});return(0,s.jsx)("div",{className:i()(l.Z.imageContainer,{[l.Z.imageContainerNew]:t}),children:e})}},54985:(e,t,n)=>{n.d(t,{g:()=>l});var a=n(51697),i=n(17237),r=n(4637);const l=({children:e})=>(0,r.jsx)(a.D,{variant:"mesto",className:i.Z.pretitle,children:e})},70808:(e,t,n)=>{n.d(t,{w:()=>f});var a=n(59496),i=n(84875),r=n.n(i),l=n(4417),o=n.n(l),s=n(51697),c=n(67759);const d=/(\((?:[0-9]{1,3}:){1,2}[0-9]{2}\))/g;var u=n(67490),m=n(4637);const h=/((?:(?:https?:\/\/)|www\.)(?:(?:(?:[a-z\u00a1-\uffff0-9][-_]*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,}))\.?)(?:[/?#][^\s"]*)?)/gi,g=/^https?:\/\//;function p(e){return"string"==typeof e?(0,m.jsx)(m.Fragment,{children:e.split(h).map(((e,t)=>t%2?(0,m.jsx)(u.Link,{to:`${g.test(e)?"":"https://"}${e}`,children:e},t):e))}):e}const C="playlist-playlist-heading",b="playlist-playlist-playlistDescription",k="playlist-playlist-list",x="playlist-playlist-listItem",y="playlist-playlist-paragraph",f=a.memo((function({html:e,onTimeStampClick:t,enableTimestamps:n=!1,enableAutomaticLinkification:i=!1,semanticColor:l="textSubdued",className:s}){const c=(0,a.useMemo)((()=>{const a=n?e.split(d).map((e=>e.match(d)?`(<time>${e.replace("(","").replace(")","")}</time>)`:e)).join(""):e;let r;try{r=o()(a,{transform:v(t,l,i),dangerouslySetChildren:[]})}catch{r=e}return r}),[n,i,e,t,l]);return(0,m.jsx)("div",{className:r()(b,s),children:c})}));function v(e,t,n){let i=0;return{p:e=>(0,m.jsx)(s.D,{as:"p",variant:"ballad",semanticColor:t,className:y,children:n?p(e.children):e.children}),a:t=>t.href?.startsWith("#t=")?(0,m.jsx)(c.E,{onClick:e,children:t.children}):t.href?(0,m.jsx)(u.Link,{to:t.href,children:t.children}):(0,m.jsx)(m.Fragment,{children:t.children}),ul:e=>(0,m.jsx)("ul",{className:k,children:e.children}),ol:e=>(0,m.jsx)("ol",{className:k,children:e.children}),li:e=>(0,m.jsx)(s.D,{as:"li",variant:"ballad",semanticColor:t,className:x,children:n?p(e.children):e.children}),br:()=>(0,m.jsx)("br",{}),h1:e=>(0,m.jsx)(s.D,{as:"h1",variant:"balladBold",semanticColor:t,className:C,children:e.children}),h2:e=>(0,m.jsx)(s.D,{as:"h2",variant:"balladBold",semanticColor:t,className:C,children:e.children}),h3:e=>(0,m.jsx)(s.D,{as:"h3",variant:"balladBold",semanticColor:t,className:C,children:e.children}),h4:e=>(0,m.jsx)(s.D,{as:"h4",variant:"balladBold",semanticColor:t,className:C,children:e.children}),h5:e=>(0,m.jsx)(s.D,{as:"h5",variant:"balladBold",semanticColor:t,className:C,children:e.children}),h6:e=>(0,m.jsx)(s.D,{as:"h6",variant:"balladBold",semanticColor:t,className:C,children:e.children}),time:t=>(0,m.jsx)(c.E,{onClick:e,children:t.children}),_:(e,t,r)=>{const l=void 0===t?e:r;return(0,m.jsx)(a.Fragment,{children:n?p(l):l},"fragment"+i++)}}}},44711:(e,t,n)=>{n.d(t,{l:()=>C});var a=n(59496),i=n(30099),r=n(43686),l=n(48989),o=n(87283);const s={"custom-order":l.HI,title:{column:o.Q.TITLE,order:o.k.ASC},artist:{column:o.Q.TITLE,order:o.k.SECONDARY_ASC},"added-by":{column:o.Q.ADDED_BY,order:o.k.ASC},"added-at":{column:o.Q.ADDED_AT,order:o.k.ASC},duration:{column:o.Q.DURATION,order:o.k.ASC},album:{column:o.Q.ALBUM,order:o.k.ASC},"album-or-podcast":{column:o.Q.ALBUM_OR_PODCAST,order:o.k.ASC},"album-or-show":{column:o.Q.ALBUM_OR_SHOW,order:o.k.ASC}},c={title:o.Q.TITLE,artist:o.Q.TITLE,"added-by":o.Q.ADDED_BY,"added-at":o.Q.ADDED_AT,duration:o.Q.DURATION,album:o.Q.ALBUM,"album-or-podcast":o.Q.ALBUM_OR_PODCAST,"album-or-show":o.Q.ALBUM_OR_SHOW},d={[o.k.NONE]:o.k.NONE,[o.k.ASC]:o.k.DESC,[o.k.DESC]:o.k.ASC,[o.k.SECONDARY_ASC]:o.k.SECONDARY_DESC,[o.k.SECONDARY_DESC]:o.k.SECONDARY_ASC},u={[o.Q.INDEX]:{key:"custom-order",get value(){return i.ag.get("sort.custom-order")}},[o.Q.TITLE]:{key:"title",get value(){return i.ag.get("sort.title")}},[o.Q.ARTIST]:{key:"artist",get value(){return i.ag.get("sort.artist")}},[o.Q.ADDED_BY]:{key:"added-by",get value(){return i.ag.get("sort.added-by")}},[o.Q.ADDED_AT]:{key:"added-at",get value(){return i.ag.get("sort.date-added")}},[o.Q.DURATION]:{key:"duration",get value(){return i.ag.get("sort.duration")}},[o.Q.EVENT_DATE]:null,[o.Q.EVENT_INFO]:null,[o.Q.ALBUM]:{key:"album",get value(){return i.ag.get("sort.album")}},[o.Q.ALBUM_OR_PODCAST]:{key:"album-or-podcast",get value(){return i.ag.get("sort.album-or-podcast")}},[o.Q.ALBUM_OR_SHOW]:{key:"album-or-show",get value(){return i.ag.get("sort.album-or-show")}},[o.Q.PLAYS]:null,[o.Q.RELEASE_DATE]:null,[o.Q.ADD]:null,[o.Q.ACTIONS]:null};var m=n(36342),h=n(88104),g=n(4637);function p(e){return!!e}const C=({columns:e,disabled:t,onSort:n,isBooklist:C=!1})=>{let b=[...e];C?b=l.i1:b.splice(2,0,m.QD.ARTIST);const{sortState:k,setSortState:x}=(0,a.useContext)(l.Gb),y=function(e){return null===e.column?u[m.QD.INDEX]:(0,h.cB)(e.column,e.order)?u[m.QD.ARTIST]:u[e.column]}(k),f=(0,a.useCallback)((e=>{n?.(),x(((e,t,n)=>e?t!==c[e]||"artist"===e&&[o.k.ASC,o.k.DESC].includes(n)||"title"===e&&[o.k.SECONDARY_ASC,o.k.SECONDARY_DESC].includes(n)?s[e]:{column:c[e],order:d[n]}:l.HI)(e,k.column,k.order))}),[n,x,k.column,k.order]),v=(0,a.useCallback)((()=>null!==k.column),[k.column]),S=b.map((e=>u[e])).filter(p);return(0,g.jsx)(r.A,{options:S,onSelect:f,selected:y,isSelectionChanged:v,sortOrder:k.order,heading:i.ag.get("drop_down.sort_by"),disabled:t})}},45980:(e,t,n)=>{n.d(t,{v:()=>b});var a=n(84875),i=n.n(a),r=n(74526),l=n(29919),o=n(1360),s=n(30099),c=n(54781),d=n(34046),u=n(76264),m=n(42365);const h="I3oc8sxg8Duq4kYUGnMo",g="LEZf9K5hG4hfCKfgr5Xo";var p=n(4637);const C=e=>(0,p.jsx)(r.e,{semanticColor:"textPositive",...e}),b=({uri:e,...t})=>{const{isEnhanced:n,toggleIsEnhanced:a}=(0,m.U)(e),{spec:r,logger:b}=(0,d.fU)(o.createDesktopEnhanceButtonEventFactory,{data:{uri:e}}),k=(0,p.jsx)(c.ws,{label:n?s.ag.get("web-player.enhance.button_aria_label_enhanced"):s.ag.get("web-player.enhance.button_aria_label_not_enhanced"),children:(0,p.jsx)(l.P,{buttonSize:"sm",className:i()(h,{[g]:n}),...t,iconLeading:n?C:void 0,onClick:()=>{b.logInteraction(n?r.hitUnenhanceContext({contextToBeUnenhanced:e}):r.hitEnhanceContext({contextToBeEnhanced:e})),a()},children:n?s.ag.get("web-player.enhance.button_text_enhanced"):s.ag.get("web-player.enhance.button_text_not_enhanced")})});return n?k:(0,p.jsx)(u.T,{id:"enhance-button",bodyText:s.ag.get("web-player.enhance.onboarding.enhance-playlist"),children:k})}},76264:(e,t,n)=>{n.d(t,{T:()=>g});var a=n(59496),i=n(87995),r=n(58745),l=n(51697),o=n(49261),s=n(98484),c=n(82760),d=n(50525);const u="iW5kFTiudWn9ItsTvZmz",m="OfNgl_iK7pi63fAi8USM";var h=n(4637);const g=function({id:e,title:t,bodyText:n,buttonText:g,shouldScrollIntoView:p,children:C}){const[b,k]=(0,d.z)(`onboarding-dismissed:${e}`,!1),x=(0,c.Mi)(),[y,f]=(0,a.useState)(null),[v,S]=(0,a.useState)(null),D=(0,a.useRef)(!1);(0,a.useEffect)((()=>{p&&v&&!D.current&&(D.current=!0,v.scrollIntoView({behavior:"smooth",block:"center"}))}),[p,v]);const w=(0,a.useCallback)((()=>k(!0)),[k]);(0,a.useEffect)((()=>{if(b)return()=>{};const e=e=>{"Escape"===e.key&&w()},t=e=>{e.target instanceof Node&&!v?.contains(e.target)&&w()};return window.addEventListener("keydown",e,!0),window.addEventListener("click",t,!0),()=>{window.removeEventListener("keydown",e,!0),window.removeEventListener("click",t,!0)}}),[b,w,v]);const E=x.current?.getBoundingClientRect(),T=y?.getBoundingClientRect();return(0,h.jsxs)(h.Fragment,{children:[(0,h.jsx)("span",{ref:f,children:C}),!b&&T&&(0,i.createPortal)((0,h.jsx)("div",{className:u,style:{top:(T?.top??0)-((E?.top??0)-(x.current?.scrollTop??0)),left:(T?.left??0)-((E?.left??0)-(x.current?.scrollLeft??0)),width:T?.width,height:T?.height},ref:S,children:(0,h.jsxs)(r.J,{popoverTitle:t,arrow:r.J.bottom,colorSet:"announcement",className:m,children:[(0,h.jsx)(l.D,{as:"p",paddingBottom:g&&o.g4,children:n}),g&&(0,h.jsx)(s.D,{buttonSize:"sm",colorSet:"invertedLight",onClick:w,children:g})]})}),x.current||document.body)]})}},34092:(e,t,n)=>{n.d(t,{v:()=>a.v});var a=n(45980)},4398:(e,t,n)=>{n.d(t,{v:()=>a.v});var a=n(83713)},5912:(e,t,n)=>{n.d(t,{s:()=>A});var a=n(59496),i=n(84875),r=n.n(i),l=n(51697),o=n(9990),s=n(30099),c=n(62168),d=n(96422),u=n(7018),m=n(20456),h=n(29915),g=n(54985),p=n(70808),C=n(68224),b=n(46915),k=n(7221),x=n(47948),y=n(70231),f=n(34046),v=n(42153);function S(e){return e.user||null}function D(e){return!!e}function w(e,t=!1){return{id:e.username,uri:e.uri,name:e.username,displayName:e.displayName||void 0,images:e.images,isMadeFor:t}}var E=n(39815),T=n(4637);const A=function({metadata:e,isPlaying:t,isPublished:n,togglePlay:i,backgroundColor:A,spec:_,specLikedSongs:j}){const{uri:N,name:O,description:I="",images:L,totalLength:R,totalLikes:B,duration:Q,owner:U,isOwnedBySelf:P=!1,isCollaborative:M=!1,formatListData:F,madeFor:X=null,collaborators:W,hasSpotifyTracks:Y,hasEpisodes:z,hasSpotifyAudiobooks:K}=e,Z=F?.attributes||{},G=Z.header_image_url_desktop||Z.image_url||null,V=null!==G?[{url:G,width:null,height:null}]:[],H=(0,o.W6)(x.bMb),J=(0,f.$P)(),q=(0,a.useMemo)((()=>function(e,t,n=[],a){return e?[w(e,!0)]:n.length>1&&a?n.map(S).filter(D).map((e=>w(e))):[w(t)]}(X,U,W?.items,H)),[X,U,W?.items,H]),$=(0,a.useContext)(k.zy),ee=(0,a.useContext)(v.S7),te=(0,a.useCallback)((()=>{if(_){const e=_.ownerFactory().hitUiReveal();J.logInteraction(e)}ee({type:"open",uri:N})}),[ee,N,_,J]),ne=(0,a.useCallback)((e=>{if(_){const e=_?.descriptionTextFactory().hitUiReveal();J.logInteraction(e)}$({type:"open",playlistDetails:{name:O,description:I,image:L[0],uri:N},focusedElement:e})}),[_,$,O,I,L,N,J]),ae=(0,a.useCallback)((()=>{if(_){const e=_.coverArtFactory().hitUiReveal();J.logInteraction(e)}$({type:"openWithImagePicker",playlistDetails:{name:O,description:I,image:L[0],uri:N}})}),[$,O,I,L,N,J,_]),ie=(0,a.useCallback)(((e,t)=>{if(_){const e=_.ownerFactory().hitUiNavigate({destination:t.creator.uri});J.logInteraction(e)}if(j){const e=j.ownerFactory().hitUiNavigate({destination:t.creator.uri});J.logInteraction(e)}}),[J,_,j]),re=H&&e.permissions?e.permissions?.isPrivate?s.ag.get("private_playlist"):s.ag.get("public_playlist"):M?s.ag.get("sidebar.collaborative_playlist"):s.ag.get("playlist"),le=(0,o.W6)(x.vyX,{loadingValue:!1});return(0,T.jsxs)(u.gF,{backgroundColor:A,backgroundImages:V,children:[(0,T.jsxs)(m.W,{children:[(0,T.jsx)(C.$,{size:"medium",onClick:i,isPlaying:t,uri:N}),(0,T.jsx)(h.i,{text:O,dragUri:N,dragLabel:O})]}),G?null:(0,T.jsx)(y._,{menu:(0,T.jsx)(c.X,{uri:N,isPublished:n}),children:(0,T.jsx)(E.k,{children:(0,T.jsx)(d.T,{canEdit:P,name:O,images:L,onClick:ae,placeholderType:"playlist",dragUri:N})})}),(0,T.jsxs)(u.sP,{children:[(0,T.jsx)(g.g,{children:re}),(0,T.jsx)(y._,{menu:(0,T.jsx)(c.X,{uri:N,isPublished:n}),children:(0,T.jsx)(u.xd,{canEdit:P,onClick:()=>{if(_){const e=_.titleFactory().hitUiReveal();J.logInteraction(e)}ne(k.w.TITLE)},dragUri:N,dragLabel:O,ariaLabel:s.ag.get("playlist.edit-details.button",O),scaleAtMinWidth:u.vz,children:O})}),I&&(0,T.jsx)(l.D,{variant:"mesto",className:b.Z.whiteOpacity,onClick:e=>{P&&(e=>{"href"in e.target||ne(k.w.DESCRIPTION)})(e)},children:(0,T.jsx)(p.w,{html:I,onTimeStampClick:()=>{},className:r()(b.Z.playlistDescription,{[b.Z.newEntityHeaders]:le})})}),(0,T.jsx)(u.QS,{creators:q,onPiledCreatorsClick:te,onCreatorClick:ie,totalItems:R,totalLikes:B??0,durationMilliseconds:Q?.milliseconds,isEstimatedDuration:Q?.isEstimate,newEntries:parseInt(Z.new_entries_count||"0",10),hasTracks:Y??!1,hasEpisodes:z??!1,hasAudiobooks:K??!1})]})]})}},46915:(e,t,n)=>{n.d(t,{Z:()=>a});const a={xs:"(min-width: 0px)",xsOnly:"(min-width: 0px) and (max-width: 767px)",sm:"(min-width: 768px)",smOnly:"(min-width: 768px) and (max-width: 1023px)",md:"(min-width: 1024px)",mdOnly:"(min-width: 1024px) and (max-width: 1279px)",lg:"(min-width: 1280px)",lgOnly:"(min-width: 1280px) and (max-width: 1919px)",xl:"(min-width: 1920px)",playlist:"playlist-playlist-playlist",searchBoxContainer:"playlist-playlist-searchBoxContainer",recommendedTrackList:"playlist-playlist-recommendedTrackList",playlistContent:"playlist-playlist-playlistContent",playlistDescription:"playlist-playlist-playlistDescription",newEntityHeaders:"iIupn8qGe4T3AvEAnRo0",top:"playlist-playlist-top",header:"playlist-playlist-header",subtitle:"playlist-playlist-subtitle",refreshButton:"plyalist-playlist-refreshButton",playlistImageContainer:"playlist-playlist-playlistImageContainer",playlistInlineCurationSection:"playlist-playlist-playlistInlineCurationSection",playlistInlineCurationTitle:"playlist-playlist-playlistInlineCurationTitle",playlistInlineCurationWrapper:"playlist-playlist-playlistInlineCurationWrapper",playlistInlineCurationCloseButton:"playlist-playlist-playlistInlineCurationCloseButton",playlistInlineCurationBackButton:"playlist-playlist-playlistInlineCurationBackButton",artistResultListTitle:"playlist-playlist-artistResultListTitle",seeMore:"playlist-playlist-seeMore",emptyStateContainer:"playlist-playlist-emptyStateContainer",searchResultListContainer:"playlist-playlist-searchResultListContainer",emptySearchTermContainer:"playlist-playlist-emptySearchTermContainer",whiteOpacity:"playlist-playlist-whiteOpacity",noBooklistSupportContainer:"playlist-playlist-noBooklistSupportContainer",icon:"playlist-playlist-icon"}}}]);
//# sourceMappingURL=8736.js.map