;"disposed","Adj","1.kuCa_karane_kelie_wEyAra"
;I'm not disposed to go there at this moment.
;--"2.koI_yA_kuCa_cIja_vyarWa_laganA"
;Her mother is disposed to new ideas.
;
;
(defrule dispose0
(declare (salience 5000))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispose.clp	dispose0  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

;She cleared her wardrobe && disposed of her old clothes. 
;usane apanI alamArI sAPa kI Ora apane purAne kapadZe beca xie
(defrule dispose1
(declare (salience 4900))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispose.clp	dispose1  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

(defrule dispose2
(declare (salience 4800))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispose.clp	dispose2  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

(defrule dispose3
(declare (salience 4700))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id disposed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kuCa_karane_kelie_wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dispose.clp  	dispose3   "  ?id "  kuCa_karane_kelie_wEyAra )" crlf))
)

(defrule dispose4
(declare (salience 4600))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispose.clp	dispose4  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

(defrule dispose5
(declare (salience 4500))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dispose.clp	dispose5  "  ?id "  " ?id1 "  nipatA  )" crlf))
)

(defrule dispose6
(declare (salience 4400))
(id-root ?id dispose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tika_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dispose.clp 	dispose6   "  ?id "  Tika_raKa )" crlf))
)

;default_sense && category=verb	TIka_raKa	0
;"dispose","VT","1.TIka_raKanA"
;She disposed  her parents' possessions.
;
;LEVEL 
;Headword : dispose
;
;Examples --
;
;"dispose","VT","1.TIka_raKanA"
;She disposed  her parents' possessions.
;usane apane mAwA-piwA kA sAmAna TIka se raKA.
;
;"dispose of","PhrV","1.nipatAnA"
;He disposed of the older stocks.
;usane purAnA mAla nipatA xiyA.
;
;yahAz 'dispose' Ora 'dispose of' meM arWa kI xqRta se anwara yaha hE ki 'dispose'
;kA arWa hE 'vyavsWiwa kara ke raKanA' Ora 'dispose of' meM arWa AwA hE 'na raKane kA'
;yAni jisako nahIM raKanA cAhawe usako 'dispose of' kara xewe hEM.
;
;awaH 'dispose' kA sUwra hogA
;
;sUwra : vyavasWiwa_raKanA
;
;
;'of' particle judZane se isake arWa meM parivarwana ho jAwA hE waWA isakA arWa ho jAwA hE 'samApwa kara xenA', 'nipatA xenA'.
