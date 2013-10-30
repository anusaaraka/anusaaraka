
(defrule skim0
(declare (salience 5000))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejI_se_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim0  "  ?id "  " ?id1 "  wejI_se_hata  )" crlf))
)

(defrule skim1
(declare (salience 4900))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejI_se_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim1  "  ?id "  " ?id1 "  wejI_se_hata  )" crlf))
)

(defrule skim2
(declare (salience 4800))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-over_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim2  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim3
(declare (salience 4700))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim3  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim4
(declare (salience 4600))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim4  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim5
(declare (salience 4500))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim5  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim6
(declare (salience 4400))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim6  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim7
(declare (salience 4300))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sarasarI_nigAha_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " skim.clp	skim7  "  ?id "  " ?id1 "  sarasarI_nigAha_xOdZa  )" crlf))
)

(defrule skim8
(declare (salience 4200))
(id-root ?id skim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malAI_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  skim.clp 	skim8   "  ?id "  malAI_hatA )" crlf))
)

;default_sense && category=verb	malAI hatA	0
;"skim","V","1.malAI hatAnA"
;Children always skim the cream from the milk.
;--"2.sarasarI najZara se xeKanA"
;His eyes skimmed the headlines of Newspaper.
;
;