;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;The book contains a few purple passages.  [M-W]
;पुस्तक में कई अलंकारिक गद्य हैं . 
(defrule purple1
(declare (salience 5000))
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 passage|prose|poem|paragraph|writing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaMkArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purple.clp 	purple1  "  ?id "  alaMkArika )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;Purple is the in colour this spring.  [oald]
;इस वसन्त में जामुनी रंग प्रचलन में है . 
(defrule purple2
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAmunI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purple.clp 	purple2  "  ?id "  jAmunI )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;Purple plums. [Cambridge]
;जामुनी बेर . 
(defrule purple3
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAmunI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purple.clp 	purple3  "  ?id "  jAmunI )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 12-3-2014
(defrule purple4
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAmunI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purple.clp 	purple4  "  ?id "  jAmunI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_purple1
(declare (salience 5000))
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 passage|prose|poem|paragraph|writing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaMkArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " purple.clp   sub_samA_purple1   "   ?id " alaMkArika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_purple1
(declare (salience 5000))
(id-root ?id purple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 passage|prose|poem|paragraph|writing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaMkArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " purple.clp   obj_samA_purple1   "   ?id " alaMkArika )" crlf))
)
