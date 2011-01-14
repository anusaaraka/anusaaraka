
(defrule hail0
(declare (salience 5000))
(id-root ?id hail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMbaMXiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hail.clp	hail0  "  ?id "  " ?id1 "  saMbaMXiwa_ho  )" crlf))
)

;He hails from America.
;vaha amarIkA se saMbaMXiwa hE
(defrule hail1
(declare (salience 4900))
(id-root ?id hail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id olAvqRti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hail.clp 	hail1   "  ?id "  olAvqRti )" crlf))
)

;"hail","N","1.olAvqRti"
;Hail damages crop during winter .
;SIwakAla ke xOrAna hone vAlI olAvqRti Pasala ko BArI hAni pahuzcAwI hE.
;
(defrule hail2
(declare (salience 4800))
(id-root ?id hail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hail.clp 	hail2   "  ?id "  pukAra )" crlf))
)

;"hail","V","1.pukAranA"
;He hailed his friend .
;usane apane miwra ko pukArA . 
;
;LEVEL 
;Headword : hail
;
;Examples --
;
;Noun
;--"1.ole"
;..a current of cold air, was congealed into a hail-stone.  
;TaMdI havA eka JoMkA ole ke gole meM CipA WA.
;Why were they not all killed by the shot that fell like hail among them? 
;oloM kI waraha unapara giranevAlI usa goliyoM kI bOCAra se ve saba mare kEse nahIM ?  
;--"2.bOCAra"
;Poulsson....had wriggled out of it on the other side, && was squirming in a hail of bullets towards Ray.
;pulasana .... reMgakara xUsarI ora se nikala gayA WA, Ora goliyoM kI bOCAra meM CatapatAwe hue re kI ora baDZa rahA WA.
;
;Verb
;--"1.pukArA"
;He ran down the stairs into the street && hailed a cab.
;vaha sIDZiyoM se nIce sadZaka kI ora ko xOdA Ora usane eka tEksI pukArA.
;Somebody would be "hailing a ghost" presently, if it wasn't done.
;agara yaha nahIM kiyA gayA wo aBI koI 'BUwa ko pukAregA'.
;A voice was now heard hailing us from the entrance.
;praveSa xvAra se hameM pukArawI eka AvAjZa sunAI xI.
;He had a persuasive, hail-fellow well-met air with him.
;
;--"2.cillAkara_aBivAxana_karanA"
;The crowd hailed the famous star.
;BIdZa ne prasixXa aBinewA kA cillAkara aBivAxana kiyA. 
;
;"hail from","kA_rahanevAlA"
;"I hail from California myself," was Messner's announcement.
;'mEM Kuxa kEliPorniyA kA rahanevAlA hUz' mEsanara kI GoRaNA WI.
;
;sUwra : pukAra^aBivAxana/ole{bOCAra}
