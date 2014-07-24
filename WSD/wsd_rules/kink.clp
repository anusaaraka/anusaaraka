
(defrule kink0
(declare (salience 5000))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink0   "  ?id "  bala )" crlf))
)

(defrule kink1
(declare (salience 4900))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink1   "  ?id "  bala_padZa )" crlf))
)

;"kink","V","1.bala_padZanA/dAlanA"
;Dont let the rope kink.
;
;

;@@@ Added by Prachi Rathore[11-3-14]
;Kink the hose.[m-w]
;रबड या प्लास्टिक की नली मोड दीजिए . 
(defrule kink2
(declare (salience 5000))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink2   "  ?id "  moda_xe )" crlf))
)

;@@@ Added by Prachi Rathore[11-3-14]
;Note that the xt vt and at graphs shown in several figures in this chapter have sharp kinks at some points implying that the functions are not differentiable at these points.[ncert]
;ध्यान दीजिए कि इस अध्याय में अनेक स्थानों पर खीँचे गए x - t, v - t तथा a - t ग्राफों में कुछ बिन्दुओं पर तीक्ष्ण मोड हैं इसका आशय यह है कि दिए गए फलनों का इन बिन्दुओं पर अवकलन नहीं निकाला जा सकता ..?
(defrule kink3
(declare (salience 5100))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink3   "  ?id "  moda )" crlf))
)

;@@@ Added by Prachi Rathore[11-3-14]
;We need to iron out the kinks in the new system.[oald]
;हमें नयी व्यवस्था में से दिक्कतें हटा देने की जरूरत है . 
(defrule kink4
(declare (salience 5200))
(id-root ?id kink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 system|game)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xikkawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kink.clp 	kink4   "  ?id "  xikkawa )" crlf))
)
