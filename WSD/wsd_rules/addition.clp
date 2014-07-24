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


(defrule addition0
(declare (salience 4000))
(id-root ?id addition)
?mng <-(meaning_to_be_decided ?id)
(id-last_word ?id addition)
(viSeRya-to_saMbanXI  ?id ?id1)
(viSeRya-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_AlAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  addition.clp 	addition0   "  ?id "  ke_AlAvA )" crlf))
)

;***********************DEFAULT RULE**************************


(defrule addition1
(declare (salience 0))
(id-root ?id addition)
?mng <-(meaning_to_be_decided ?id)
(id-last_word ?id addition)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  addition.clp 	addition1   "  ?id "  joda )" crlf))
)


;***************************************************************** MEANINGS **************************************************************** 

;जोड़
;योग
;उपाधि
;वृद्धि
;अनुवृद्धि
;इसके अतिरिक्त

;The process of adding two or more numbers together to find their total:[oald]
;1. Children learning addition and subtraction.[oald]
;2. Twice a week the children are tested in basic mathematical skills such as addition and subtraction.[oald]

;Addition (to something) a thing that is added to something else:[oald]
;1. The latest addition to our range of cars.[oald]
;2. An addition to the family (= another child).[oald]
;3. Because I played nicer with her than the other dogs, Michelle thought I'd make a good addition to the family.[coca]
;4. Last minute additions to the government's package of proposals.[oald]
;5. A secretary would be a welcome/ useful addition to our staff.[cambridge]

;Addition (of something) the act of adding something to something else:[oald]
;1. Pasta's basic ingredients are flour and water, sometimes with the addition of eggs or oil.[oald]
;2. Most working environments are improved by the addition of (= by adding) a few plants and pictures.[cambridge]

;Addition (to something) a new part that is added to a building:[oald]
;1. Architects who specialize in home additions.[oald]
;2. The addition should match the architecture of the house.[oald]

;idiom:

;In addition to his flat in London, he has a villa in Italy and a castle in Scotland.[cambridge]
;In addition to these arrangements, extra ambulances will be on duty until midnight.[oald]
;There is, in addition, one further point to make.[oald]
;In addition/What is more, they seem to find it easier to learn third or even fourth languages.[oald]

