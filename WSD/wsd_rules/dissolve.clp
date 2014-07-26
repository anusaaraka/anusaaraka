;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (4-07-14)
;Dissolve some sugar in water.
;pAnI meM XodZI cInI Golie.
;Why are you dissolving salt in your tea.
;wuma apanI cAya meM namaka kyuM Gola rahe ho.
(defrule dissolve0
(declare (salience 100))
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve0   "  ?id "  Gola)" crlf))
)

;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (4-07-14)
;The court dissolved their marriage in 1998.
;nyAyAlaya ne 1998 meM unakI SAxI BaMga kara xI.
;The Speaker dissolved the parliament.
;aXyakRa ne sansaxa BaMga kara xiyA.
(defrule dissolve1
(declare (salience 500))
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?obj)
(id-root ?obj parliament|marriage|meeting|assembly)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve1   "  ?id "  BaMga_kara)" crlf))
)

;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (7-07-14)
;The tension in the office just dissolved when she left the office.
;jaba usane kAryAlaya Coda diyA waba kAryAlaya meM wanAva ekaxama Kawma ho gayA.
(defrule dissolve2
(declare (salience 600))
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?sbj)
(id-root ?sbj tension|anger|happiness|sorrow)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve2   "  ?id "  Kawma_ho)" crlf))
)

;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (7-07-14)
;The bacteria would soon dissolve the body.
;jIvANu SIGra hI SarIra ko galA xeMge.
(defrule dissolve3
(declare (salience 600))
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?sbj)
(id-root ?sbj acid|bacteria|decomposer)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve3   "  ?id "  galA_xe)" crlf))
)

;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (7-07-14)
;He touches the mouse and the galaxies dissolve into a row of badly done codes.
;vaha mAusa ko CUwA hE Ora vo AkASagaMgAez burI waraha banAI huI kUtoM meM baxala jAwI hEM.
(defrule dissolve4
(declare (salience 600))
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) into)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve4   "  ?id "  baxala_jA)" crlf))
)

;@@@ Added by July 2014 workshop participants under Aditi and Soma guidance (4-07-14)
;Sugar dissolves in water.
;cInI pAnI meM GulawI hE.
;Oil does not dissolve in water.
;wela pAnI meM nahIM GulawA hE.
(defrule dissolve5
(id-root ?id dissolve)
(id-cat_coarse ?id verb)
?mng<-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dissolve.clp    dissolve5   "  ?id "  Gula)" crlf))
)

