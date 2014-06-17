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
;@@@ Added by jagriti(31.08.2013)
;She shrank before her boss's anger.  [english to hindi word net]
;वह अपने मालिक के क्रोध के सामने सहम  गयी. 
(defrule shrink0
(declare (salience 5000))
(id-root ?id shrink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahama_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrink.clp 	shrink0   "  ?id "sahama_jA)" crlf))
)

;@@@ Added by jagriti(31.08.2013)
;The workforce has shrunk from 20000 to 6000 in the past ten years.   [english to hindi wordnet]        
;कर्मचारियों की संख्या पिछले दस साल में 20000 से 6000 तक घट गई है.
;The productivity improvements have shrunk our cost by 25%. [cambridge advance learner]
;उत्पादकता में सुधार से हमारी लागत 25% तक घट गयी है.
(defrule shrink1
(declare (salience 4900))
(id-root ?id shrink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-word ?id1 workforce|productivity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrink.clp 	shrink1   "  ?id " Gata)" crlf))
)


;....default rule......
;@@@ Added by jagriti(31.08.2013)
;Will this shirt shrink in the wash? [english to hindi wordnet]
;क्या यह कमीज धुलाई से सिकुडेगी? 
(defrule shrink2
(declare (salience 4900))
(id-root ?id shrink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikuda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrink.clp 	shrink2   "  ?id " sikuda)" crlf))
)
;I was so depressed that I ended up going to see a shrink. [cambridge dictionary online]
;मैं इतना अवसादग्रस्त था कि मैने मनोचिकितसक से मिलना बंद कर दिय़ा.

;@@@ Added by jagriti(31.08.2013)
(defrule shrink3
(declare (salience 4800))
(id-root ?id shrink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoroga_cikiwsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrink.clp 	shrink3   "  ?id " manoroga_cikiwsaka)" crlf))
)

(defrule shrink4
(declare (salience 4700))
(id-root ?id shrink)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrink.clp 	shrink4   "  ?id " sikudanA)" crlf))
)
