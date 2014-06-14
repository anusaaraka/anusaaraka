
(defrule expose0
(declare (salience 5000))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 him)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose0   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose0   "  ?id " kA )" crlf)
)
)

(defrule expose1
(declare (salience 4900))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 her)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose1   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose1   "  ?id "  kA )" crlf)
)
)

(defrule expose2
(declare (salience 4800))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 them)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose2   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose2   "  ?id " kA )" crlf)
)
)

(defrule expose3
(declare (salience 4700))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 me)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose3   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose3   "  ?id " kA )" crlf)
)
)

(defrule expose4
(declare (salience 4600))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 us)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose4   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose4   "  ?id " kA )" crlf)
)
)

(defrule expose5
(declare (salience 4500))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 you)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAja_KolanA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose5   "  ?id "  rAja_KolanA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expose.clp    expose5   "  ?id " kA )" crlf)
)
)

;@@@ added by Pramila(BU) on 12-12-2013
;If the plants were directly exposed to the hot summer sun, the leaf temperature would exceed 40 degrees and the leaves would burn and
; turn black.
;यदि पौधों को सीधे ही गर्मी में सूर्य के सामने खुला छोड़ दिया जाए तो पत्तियों पर तापमान बढ़कर 40° सेंटीग्रेड हो जाएगा और पत्तियां जल जाएगी तथा काली पड़ जाएंगी।
(defrule expose6
(declare (salience 4800))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 sAmane_KulA_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " expose.clp	expose2  "  ?id "  " ?id1 "  sAmane_KulA_CodZa_xe  )" crlf))
)


(defrule expose7
(declare (salience 4000))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose6   "  ?id "  Kola )" crlf))
)

;@@@ added by Pramila(BU) on 12-12-2013
;He published an expose of the graft.      ;sentence of this file
;उसने रिश्वत का पर्दाफाश करने वाला लेख प्रकाशित किया.
(defrule expose8
(declare (salience 4800))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parxAPASa_karane_wAlA_leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose8   "  ?id "  parxAPASa_karane_wAlA_leKa)" crlf))
)


;@@@ Added by Pramila(BU) on 12-12-2013
;Apply the suntan cream liberally to exposed areas every three hours and after swimming.       ;oald
;हर तीन घंटे में और तैराकी के बाद खुले हुए भागो पर धूप से बचाने वाली क्रीम धीरे-धीरे लगाइए. 
(defrule expose9
(declare (salience 4800))
(id-root ?id expose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kule_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expose.clp 	expose9   "  ?id "  Kule_ho )" crlf))
)
;default_sense && category=verb	Kola	0
;"expose","VT","1.KolanA"
;He exposed the rampant corruption in his department through his article.
;--"2.vivaraNa"
;He published an expose of the graft && corruption government offices.
;
;
