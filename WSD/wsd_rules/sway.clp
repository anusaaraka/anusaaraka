;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;######################################################################
;@@@ Added by jagriti(4.1.2013)
;The country fell under the sway of powerful invaders. [iit-bombay]
;देश शक्तिशाली आक्रमणकारियों के शासन के अधीन हो गया.
;Her parents no longer seem to have much sway over her.[cambridge dict]
;लगता है उसके माता पिता का अब उस पर ज्यादा शासन नहीं है.
(defrule sway0
(declare (salience 5000))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-under_saMbanXI ? ?id)(viSeRya-over_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway0   "  ?id "  SAsana)" crlf))
)
;@@@ Added by jagriti(4.1.2013)
;Her speech failed to sway her colleagues into supporting the plan.
;अपने भाषण की योजना के समर्थन में उनके सहयोगियों को प्रभावित करने में विफल रहा है.
;A speech that swayed many voters. 
; एक भाषण ने कई मतदाताओं को प्रभावित किया .
(defrule sway1
(declare (salience 4900))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway1   "  ?id "  praBAviwa_kara)" crlf))
) 
;@@@ Added by jagriti(14.2.2014)
;Don't be swayed by false promises.[rajpal]
;झूठे वादों से मत विचलित हो . 
(defrule sway2
(declare (salience 5000))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicaliwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway2   "  ?id "  vicaliwa_ho)" crlf))
)
;@@@ Added by jagriti(14.2.2014)
;Dancers are swaying.[rajpal]
;नर्तक झूम रहे हैं . 
(defrule sway3
(declare (salience 5000))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 dancer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway3   "  ?id "  JUma)" crlf))
) 

;....default rule..... 
;@@@ Added by jagriti(4.1.2013)
;Walk with the sway of hips.
;कूल्हों को लचकाकर  चलो. 
(defrule sway4
(declare (salience 1))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacak))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway4   "  ?id "  lacak)" crlf))
) 
;@@@ Added by jagriti(4.1.2013)
;Vicky swayed and fell.[oald]
;विक्की हिला और गिर गया. 
;The branches were swaying in the wind.[oald]
;शाखाएँ हवा में हिल रही थी.
(defrule sway5
(declare (salience 1))
(id-root ?id sway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sway.clp 	sway5   "  ?id "  hilA)" crlf))
) 

