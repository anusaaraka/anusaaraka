
(defrule delivery0
(declare (salience 5000))
(id-root ?id delivery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viwaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delivery.clp 	delivery0   "  ?id "  viwaraNa )" crlf))
)

(defrule delivery1
(declare (salience 4900))
(id-root ?id delivery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzcAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delivery.clp 	delivery1   "  ?id "  pahuzcAne_vAlA )" crlf))
)

;"delivery","Adj","1.pahuzcAne vAlA"
;The delivery van came with the parcels.
;
;LEVEL 
;Headword : delivery
;
;Examples --
;
;"delivery","N","1.pahuzcanA"
;The construction company has needs the delivery of 100 bags of cement by tommorow.
;kaMstrakSana kampanI ke liye kala waka sImeMta ke sO bEga pahuzca jAne cAhiyeM
;--"2.milanA"
;Ram said,'please pay on delivery of Car'.
;rAma ne kahA,"kqpayA kAra milane para BugawAna kare" <--milegA <---pahuzca jAegA
;--"3.prasUwi"
;Sonu went for her delivery to the hospital yesterday.
;sonU kala apanI prasUwi ke liye aspawAla gayI hE.  <--bacce ko xuniyA meM lAyA jAegA <--pahuzcAyA jAyegA
;--"3.PeMkanA"
;The delivery of the ball was very fast.
;bOYla PeMkane kI gawi bahuwa wejZa WI. <--bOYla ko ballebAjZa waka pahuzcAnA
;--"4.BARaNa SElI"
;Her delivery of Hindi is very poor.
;usakI hinxI BARaNa SElI bahuwa KarAba hE. <---SrowAoM waka bAwa ko pahuzcAnA
;
;"delivery","Adj","1.pahuzcAne vAlA"
;The delivery van came with the parcels.
;(sAmAna) pahuzcAnevAlI vEna pArsala lekara A gayI. <--jo pahuzcAye vaha
;
;
;Upara ke uxAharaNoM ke AXAra para isakA sUwra banawA hE --
;
;sUwra : pahuzcAnA`
