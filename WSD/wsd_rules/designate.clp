
(defrule designate0
(declare (salience 5000))
(id-root ?id designate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  designate.clp 	designate0   "  ?id "  niyukwa_karanA )" crlf))
)

(defrule designate1
(declare (salience 4000))
(id-root ?id designate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  designate.clp 	designate1   "  ?id "  niyukwa_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 13-12-2013
;The inside of the park was designated as 'No Smoking' area.          ;sentece of this file
;pArka ke anxara kA kRewra 'XUmrapAna_niSixXa' kRewra nirxiRta kiyA gayA WA.
(defrule designate2
(declare (salience 4900))
(id-root ?id designate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?id1)
(kriyA-karma  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxiRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  designate.clp 	designate2   "  ?id "  nirxiRta_kara )" crlf))
)

;default_sense && category=verb	nirxiRta_kara	0
;"designate","VT","1.nirxiRta_karanA"
;The inside of the park was designated as 'No Smoking' area.
;pArka ke anxara kA kRewra 'XUmrapAna_niSixXa' kRewra nirxiRta ho gayA WA.
;--"2.niyukwa_karanA"
;Ram was designated as the Police Chief. 
;rAma pulisa ke sarvocca aXikArI ke rUpa meM niyukwa kiyA gayA.
;
;
;LEVEL 
;Headword : designate
;
;Examples --
;
;"designate","Adj","1.paxanAmiwa"
;Ram is attending the interview with the Director designate.
;rAma paxanAmiwa dAyarektara ke sAWa sAkRAwkAra ateMda kara rahA hE. <---jise nAma xiyA gayA hE vaha
;
;"designate","VT","1.nirxiRta_karanA"
;The inside of the park was designated as 'No Smoking' area.
;pArka ke anxara kA kRewra 'XUmrapAna_niSixXa' kRewra nirxiRta ho gayA WA.<--cihniwa_karanA
;--"2.niyukwa_karanA"
;Ram was designated as the Police Chief.
;rAma pulisa ke sarvocca aXikArI ke rUpa meM niyukwa kiyA gayA.<--paxa xenA<--paxanAma se cihniwa_karanA
;
;sUwra : nAmajZaxa_karanA[>niyukwa_karanA]
;
