
(defrule contour0
(declare (salience 5000))
(id-root ?id contour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id contoured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nirXAriwa_kI_huI_rUpareKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  contour.clp  	contour0   "  ?id "  nirXAriwa_kI_huI_rUpareKA )" crlf))
)

;"contoured","Adj","1.nirXAriwa_kI_huI_rUpareKA"
;The neatly contoured lines of her new house shows its clear structure.
;
(defrule contour1
(declare (salience 4900))
(id-root ?id contour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contour.clp 	contour1   "  ?id "  AkAra )" crlf))
)

;"contour","N","1.AkAra"
;Sculpturist has made the smooth contours of a sculpture.
;--"2.rUpareKA"  
;A road map of A.P.shows several contours.
;
;
