
(defrule loathe0
(declare (salience 5000))
(id-root ?id loathe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id loathing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id GqNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  loathe.clp  	loathe0   "  ?id "  GqNA )" crlf))
)

;"loathing","N","1.GqNA"
;Each has an intense loathing of the other.
;
(defrule loathe1
(declare (salience 4900))
(id-root ?id loathe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loathe.clp 	loathe1   "  ?id "  GqNA_kara )" crlf))
)

;"loathe","V","1.GqNA karanA"
;I loathe to take that road to my house because of very unpleasant stench at a particular point.
;
;
;
;@@@--- Added by Nandini(19-5-14)
;I loathe to take that road to my house because of very unpleasant stench at a particular point.[HinKoja]
;mEM mere Gara ke usa raswe ke eka viSiRta sWAna se  AnevAlI awyaMwa  xurganXa ke kAraNa vahAz se jAnA  nApasanxa karawA hUz .
(defrule loathe2
(declare (salience 4950))
(id-root ?id loathe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 take)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApasanxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loathe.clp 	loathe2   "  ?id "  nApasanxa_kara )" crlf))
)