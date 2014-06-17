
(defrule pit0
(declare (salience 5000))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp     pit0   "  ?id "  gadDA )" crlf))
)

;"pit","N","1.gaharA_gaDDA"
;Put all the leaves in the pit in that ground.
;That metal pit is still open.
;--"2.koyale_kI_KAna"
;To go in coal mine pit is a risky job.
;
(defrule pit1
(declare (salience 4900))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDe_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit1   "  ?id "  gadDe_banA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;Our hotel was the absolute pits. [cambridge]
;हमारा होटल एकदम खराब था .
(defrule pit2
(declare (salience 5500))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-viSeRaka  ?id ?id1))
(id-root ?id1 absolute|really)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit2   "  ?id "  KarAba )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;Teams of athletes were pitted against each other. [cambridge]
;व्यायामियों की टीमें एक दूसरे के विरिद्ध भड़काई जा रही थीं .
(defrule pit3
(declare (salience 5500))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BadZakAye_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit3   "  ?id "  BadZakAye_jA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;Peach pit. [oald]
;आड़ू की गुठली .
(defrule pit4
(declare (salience 5500))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
(id-root ?id1 peach|cherry|olive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guTalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit4   "  ?id "  guTalI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;He had a sudden sinking feeling in the pit of his stomach. [oald]
;उसके पेट के अन्दर अचानक एक संवेदना हुई .
(defrule pit5
(declare (salience 5500))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 stomach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit5   "  ?id "  anxara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;The surface of the moon is pitted with craters. [oald]
;चन्द्रमा की सतह ज्वालामुखी के पहाड़ों के साथ गड्ढेदार हुई है .
(defrule pit6
(declare (salience 5500))
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit6   "  ?id "  gadDexAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
(defrule pit7
(id-root ?id pit)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pit.clp 	pit7   "  ?id "  gadDA )" crlf))
)

;"pit","V","1.gadDe_banAnA"
;The acid had pitted the surface of zinc piece.
;--"1.bIja_nikAlanA"
;Eat pitted dates.
;
