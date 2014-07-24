;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
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
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;@@@ Added by jagriti(11.3.2014)
;Who scoffed all the grapes?[oald] 
;सभी अङ्गूर किसने भकोसे?
(defrule scoff0
(declare (salience 5000))
(id-root ?id scoff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bakosa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoff.clp 	scoff0   "  ?id "  Bakosa )" crlf))
)
;....Default Rule.....
;@@@ Added by jagriti(11.3.2014)
;He scoffed at our amateurish attempts.[oald]
;उसने हमारे अप्रवीण प्रयासों पर हंँसी उडाया .  
(defrule scoff1
(declare (salience 100))
(id-root ?id scoff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haMzsI_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoff.clp 	scoff1   "  ?id "  haMzsI_udZA )" crlf))
)
;@@@ Added by jagriti(11.3.2014)
;Superstitions have been the scoff of the scientists.[rajpal]
;अन्धविश्वास वैज्ञानिकों में उपहास बन चुके हैं .
(defrule scoff2
(declare (salience 100))
(id-root ?id scoff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upahAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoff.clp 	scoff2   "  ?id "  upahAsa )" crlf))
)


