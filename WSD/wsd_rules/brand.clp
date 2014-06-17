;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)21-Feb-2014
;An unorthodox brand of humour.[oald]
;परिहास का एक रूढीवादी तरीका 
;I don't think Bertha would appreciate your particular brand of sympathy.[oald]
;मुझे नहीं लगता कि बेर्था आपकी सहानुभूति के विशिष्ट तरीके को पसंद करेगी. 
(defrule brand2
(declare (salience 5000))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 humour|sympathy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand2   "  ?id "  warIkA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)21-Feb-2014
;They were branded as liars and cheats.[oald]
;वह झूठों और ठगों के रूप में माने गये थे/छाप पड़ी थी/जाने जाते थे 
(defrule brand3
(declare (salience 5000))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand3   "  ?id "  mAna )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)21-Feb-2014
;The newspapers branded her a hypocrite.[oald]
;समाचारपत्रों ने उस पर पाखण्डी होने की छाप लगायी
(defrule brand4
(declare (salience 5000))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(object-object_samAnAXikaraNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApa_lagA))
(assert (kriyA_id-object_viBakwi ?id para))
(assert (id-wsd_viBakwi ?id2 kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand4  "  ?id "  CApa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  brand.clp 	brand4   "  ?id " para )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi  " ?*wsd_dir* "  brand.clp 	brand4  "  ?id2 "  kI )" crlf)
)
)
;note:run the example given above this rule using parse 2 to get the correct relations

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;A brand on our horse's leg.[shiksharthi]
;हमारे घोड़े की टाँग का दाग
(defrule brand5
(declare (salience 5000))
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-word ?id1 leg)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand5   "  ?id "  xAga )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;We kindled fire with brands.[shiksharthi]
;हमने लुकाठियों से आग प्रज्वलित की
(defrule brand6
(declare (salience 5000))
(id-word ?id brands)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id)
(kriyA-object ?id1 ?id2)
(id-word ?id2 fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lukATI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand6  "  ?id "  lukATI )" crlf))
)
;*************************DEFAULT RULES***************************

;$$$ Modified by Garima Singh(M.tech-C.S, bansthali Vidyapith) 15-Feb-2014
;Modified meaninig from 'brAMda' to 'CApa'
(defrule brand0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand0   "  ?id "  CApa )" crlf))
)

;"brand","N","1.brAMda{cihna}"
;There's a new brand of hero in the movies now
;
(defrule brand1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihna_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brand.clp 	brand1   "  ?id "  cihna_banA )" crlf))
)


;********************EXAMPLES************************

;"brand","VT","1.cihna_banAnA"
;She was branded a loose woman
;
;An unorthodox brand of humour.
;I don't think Bertha would appreciate your particular brand of sympathy.
;They were branded as liars and cheats.
;The newspapers branded her a hypocrite.
