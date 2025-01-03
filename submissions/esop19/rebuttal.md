# Related Works (Rev_1_&_Rev_2)

Reviewers pointed out some of the relevant works missing in our discussion. We are thankful for the suggestions and will add the discussion of the works in future revisions. At the same time, we believe that none of those omissions are crucial. We discuss some of the most relevant works below.

Bahr’s work (“Composing and Decomposing…”) shows the usefulness of closed type families (CTF) in the datatype a la carte-line of work on extensible datatypes. While CTF are essential for us too, generic programming (GP) is a very different setting from the one of Bahr’s. Through the use of CTF, our work aims to advance GP-line of works, to which Bahr’s work does nothing.

In contrast, Cacciari Miraldo and Serrano made great steps advancing GP recently (ICFP’18 workshops), and we are well aware of those. “Generic programming of all kinds” paper aims at a much more ambitious task than ours, and quite orthogonal to it.

"Sums of products for mutually recursive datatypes" (Cacciari Miraldo and Serrano) is very relevant to our work, and the lack of the discussion of it in our text is very unfortunate, indeed! This is merely an oversight. For the purpose of the rebuttal, we summarize the difference with our work as follows: their approach leads to a whole new GP-library (dubbed generics-mrsop) which mixes the generic-sop “pointless” (as in not employing fixed points) approach with the multirec’s “pointful” (based on fixed points) one. In contrast, our approach stays within generic-sop and doesn’t require to abandon it. We believe our approach is more useful for those already adopted generic-sop as their main GP solution, as well as to the users of other widespread GP libraries not based on fixed points (mainly, GHC.Generics), see the next subsection.

# Relation to fixed-point and other approaches to GP (Rev_1_&_Rev_3)

Fixed-point approach to GP is very popular in the literature, so we omit its description. It was pointed out, this undermines the motivation for our work. In future revisions, we show it is more heavy-weight. We also try to do a statistical analysis of the GP libraries used in open-source code. We believe, that the most widespread approach is the one supported natively by the compiler — GHC.Generics. It is a binary sum-of-products, “pointless” approach. We took SOP instead just because SOP uses more recent compiler extensions allowing cleaner n-ary sum-of-products, but still “pointless” representation.

We are also going to support our claim about the applicability of our approach, as Reviewer_3 requested, by providing an example with GHC.Generics in future revisions.

# Misc

## Review_1

We admit that we could do a better job in the introductory part of the paper. At the same time, we are already running out of space, so this won’t come without the price of throwing out technical content. We agree that for ESOP audience the balance between introduction and technicalities is not ideal.

> Is a cascade of pairs really all that problematic? Why? The authors merely write "They form an expressive instrument for defining generic functions in a more succinct and high-level style

Binary sums of products have at least a minus that they allow ill-formed representations, e.g. products containing nested sums. This, in turn, may potentially lead to errors in a generic program. The SOP encoding prohibits this.

## Review_3

We agree that a formal description of the approach would be invaluable. Alas, we are even not aware of good examples formalizing GP idioms (we based our work mostly on what we see before in [30],[26],[22]). We believe, this is definitely a topic for a whole separate paper.
