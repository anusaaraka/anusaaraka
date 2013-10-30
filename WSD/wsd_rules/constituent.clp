;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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
;##############################################################################



;She has the full support of her constituents.
;उसके पास उसके निर्वाचकों का पूरा समर्थन  है . 
;And I hear that from all of my constituents.
;और यह मैं मेरे सभी निर्वाचकों से सुनता हूँ 
(defrule constituent0
(declare (salience 3800))
(id-root ?id constituent)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAcaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constituent.clp 	constituent0   "  ?id "  nirvAcaka )" crlf))
)

;--------------------------------- Default rules -------------------------------------

;What are the basic constituents of the mixture?
;मिश्रण के बुनियादी घटक क्या हैं? 
;Silicon and oxygen are the fundamental constituents of rocks in the earth's crust.
;सिलिकन और आक्सीजन पृथ्वी के ऊपरी तह में चट्टानों के मूलभूत घटक हैं . 
(defrule constituent1
(declare (salience 0))
(id-root ?id constituent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constituent.clp 	constituent1   "  ?id "  Gataka )" crlf))
)

;Let's look at the constituent parts of this sentence.
;चलिये हम इस वाक्य के घटक भागो को देखें 
(defrule constituent2
(declare (salience 0))
(id-root ?id constituent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  constituent.clp 	constituent2   "  ?id "  Gataka )" crlf))
)



;***************************************** EXAMPLES ****************************************************

;She has the full support of her constituents.[oald]
;She knew it was the right decision, she knew it was best for her constituents.[coca]
;And I hear that from all of my constituents.[coca]
;The MP worked hard, always talking to his constituents and listening to their problems.[cambridge]
;Silicon and oxygen are the fundamental constituents of rocks in the earth's crust.[oald]
;What are the basic constituents of the mixture?[cambridge]
;Let's look at the constituent parts of this sentence.[cambridge]
;Hydrogen, the lightest element and the sun's primary constituent, fuses to become helium, releasing energy. [coca]

;************************************* TO BE RESOLVED LATER ********************************************

;You have to figure out whether or not your group of constituents want that guy. [coca]
;viSeRya-of_saMbanXI ?group ?id
;viSeRya-RaRTI_viSeRaNa ?group ?your

;I don't want to get involved in trying to make every constituent happy.
;object-object_samAnAXikaraNa  ?id ?happy

;I assume he is a constituent
;subject-subject_samAnAXikaraNa  ?he ?id
