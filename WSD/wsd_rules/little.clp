
;Keep yourself a little free when I am there.
(defrule little0
(declare (salience 5000))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-word =(+ ?id 1) one )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little0   "  ?id "  CotA )" crlf))
)

; The little one
;previous_word=a && category=adjective && following_category=adjective	WodAsA	0
;previous_word=a && category=adjective && following_category=noun	CotAsA	0
; Since examples are not there, these rules have been blocked.
; Also it gave wrong answer in 'a little antique shop' as 'WodAsA ..'
(defrule little1
(declare (salience 4900))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) crown )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little1   "  ?id "  CotA )" crlf))
)

; Refine the above rule: Add countable/uncountable to handle the cases
; I want a little sugar
;a little afraid Vs a little crown
; the rule is modified as below: if countable, it will have sg/pl forms
(defrule little2
(declare (salience 4800))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) pl)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little2   "  ?id "  CotA- )" crlf))
)

(defrule little3
(declare (salience 4700))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 job)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little3   "  ?id "  CotA )" crlf))
)


;Added by Meena(13.10.09)
;It struggled to force its body through that little hole .
(defrule little4
(declare (salience 4700))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp    little4   "  ?id "  CotA )" crlf))
)



(defrule little5
(declare (salience 4600))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little5   "  ?id "  WodA )" crlf))
)

;@@@ Added by Nandini (11-12-13)
;I felt his essay needed a little pruning.(via mail)
;muJe lagawA hE ki usake nibanXa ko Wode kAta-CAzta kI AvaSyakawA hE.
(defrule little6
(declare (salience 4700))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pruning|water|milk)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-det_viSeRaNa  ?id1 ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little6   "  ?id "  WodA )" crlf))
)

;@@@ Added by Nandini (11-12-13)
;There was little snow on the lower reaches of the ski run. (via mail)
;skI ke pattI ke nicale BAgoMpara baraPa nahiM ke barAbar WI.
(defrule little7
(declare (salience 4710))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 snow)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-on_saMbanXI  ?id1 ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahIM_ke_barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little7   "  ?id "  nahIM_ke_barAbara )" crlf))
)


;@@@ Added by Nandini (18-12-13)
;Mongla rejoined them a little later.
;mongla  WodI xera bAxa  unako milA.
(defrule little8
(declare (salience 4790))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 later)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-aXikaraNavAcI  ? ?id1)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp 	little8   "  ?id "  WodA )" crlf))
)

;@@@ Added by Nandini (21-1-14)
;My words has little effect on her.[via mail]
;mere SabxoM kA usapara WodA praBAva hE.
(defrule little9
(declare (salience 5010))
(id-root ?id little)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 effect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  little.clp    little9   "  ?id "  WodA )" crlf))
)



;"little","Adj","1.WodA"
;Give me a little salt.
;It's little away from use.
;--"2.CotA"
;A nice little girl.
;When I was a little child my mother used to carry me in her lap.
;--"3.mahawvahIna"
;He has a little problem with his speech.
;"littoral","N","1.wata"
;
;
