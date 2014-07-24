
(defrule poach0
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama_pAnI_meM_walanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach0   "  ?id "  garama_pAnI_meM_walanA )" crlf))
)

;"poach","N","1.garama_pAnI_meM_walanA"
;I ate poach in my breakfast.
;
(defrule poach1
(declare (salience 4900))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anaXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach1   "  ?id "  anaXikAra )" crlf))
)

;"poach","V","1.anaXikAra"
;The villager was caught by the forester for poaching elephant.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;Poach the eggs by breaking them open in the boiling water. [Rajpal]
;अण्डों को फोड़कर खुले उबले पानी में पकाइये .
(defrule poach2
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach2   "  ?id "  pakA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;He was caught poaching partridges. [Rajpal]
;वह तीतरों का अवैध शिकार करते हुए पकड़ गया था.
(defrule poach3
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 partridge|rabit|deer|peacock|lion|tiger|bird) ;a list of animals and birds must be maintained separately
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avEXa_SikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach3   "  ?id "  avEXa_SikAra_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;He went to poach in the neighbourhood pond. [Rajpal]
;वह पड़ोस के तालाब में अवैध शिकार करने गया था.
(defrule poach4
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avEXa_SikAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach4   "  ?id "  avEXa_SikAra_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-2-2014
;The elephants are poached for their tusks. [Rajpal]
;हाथियों का उनके दाँतों के कारण शिकार होता है .
(defrule poach5
(declare (salience 5000))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach5   "  ?id "  SikAra_ho )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
;We had poached eggs for breakfast.  [cambridge]
;हमने नाश्ते के लिये अण्डों को पकाया .
(defrule poach6
(declare (salience 5500))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 egg)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach6   "  ?id "  pakA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
;The company poached the contract from their main rivals.  [oald]
;कम्पनी ने प्रतिद्वन्दियों से करार हासिल करा.
(defrule poach7
(declare (salience 5500))
(id-root ?id poach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 contract|employee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poach.clp 	poach7   "  ?id "  hAsila_kara )" crlf))
)

