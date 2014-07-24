;@@@ Added by Pramila(Banasthali University) on 06-02-2014
;I esteem it as a duty.       ;shiksharthi
;मैं इसे कर्त्तव्य नहीं समझता.
(defrule esteem0
(declare (salience 5000))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem0   "  ?id "  samaJa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-02-2014
;I would esteem it a favour if you would accompany me.       ;cald
;मैं इसे एक एहसान मानूँगा यदि आप मेरा साथ देंगे . 
(defrule esteem1
(declare (salience 4900))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem1   "  ?id "  mAna )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-02-2014
;He was esteemed as a dedicated and imaginative scholar.       ;oald
;उसे एक समर्पित और कल्पनाशील विद्वान के रूप में सम्मानित किया गया था.
(defrule esteem2
(declare (salience 4900))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAniwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem2   "  ?id "  sammAniwa_kara )" crlf))
)

;--------------Default rules----------------------

(defrule esteem3
(declare (salience 4000))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem3   "  ?id "  Axara )" crlf))
)

;"esteem","N","1.Axara/sammAna"
;It is held in esteem
;
(defrule esteem4
(declare (salience 4000))
(id-root ?id esteem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  esteem.clp 	esteem4   "  ?id "  sammAna_kara )" crlf))
)

;"esteem","VT","1.sammAna_karanA"
;--"2.mAnanA"
;
