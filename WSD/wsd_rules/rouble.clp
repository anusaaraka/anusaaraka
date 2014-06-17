;@@@ Added by Anita 19.2.2014
;I started building this hut thinking it would cost me something over a hundred roubles. ;[www.online-literature.com/tolstoy/2891/]
;मैंने यह सोचकर यह झोपड़ी बनानी शुरू की थी कि इसकी कीमत मुझे कुछ सौ रूबल से अधिक आएगी ।
(defrule rouble0
(declare (salience 5000))
(id-root ?id rouble)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-over_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUbala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rouble.clp    rouble0 " ?id " rUbala)" crlf))
) 
;##############################default-rule############################
;@@@ Added by Anita 25-02-2014
;the unit of money in Russia.
;रूस देश की मुद्रा ।
(defrule rouble_default-rule
;(declare (salience 5000))
(id-root ?id rouble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUsa_xeSa_kI_muxrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rouble.clp    rouble_default-rule " ?id " rUsa_xeSa_kI_muxrA)" crlf))
) 
