�]q (XV   /home/mandub/Desktop/Thakaa/Resumes-Filtering/converted/Major_Project_Report.pdf10.jpgqX  11
The CV and vacancy parsing models are machine-learned models, which are trained to detect
relevant phrases and sections in CVs and vacancies and can infer what kind of information the
given phrase represents. Knowing the "meaning" of relevant parts of a CV allows more
sophisticated search and filtering options, e.g. by searching only in the skills section or filtering
candidates by their years of experience.
workflow that we are mainly interested in involves the query generation component, which
uses the information obtained from the vacancy parsing model and generates a query
according to a predefined template. This kind of query is generally longer than user defined
queries and contains a lot more information. An example query is given in Listing 1, which
contains both terms that should match in specific fields and terms which can match anywhere
in the CV (so-called fulltext terms).
Thus, these queries provide a good basis for finding candidates that match the original job
posting well with very little human effort. Based on the search terms in the generated query,
the search engine in our current system computes a score for each candidate's CV, according to
which a final ranking is created. The focus of our work is to extend this current ranking system
by learning a model that can re-rank an already ranked list of candidates according to some
notion of suitability for a given query. Concretely, the initial ranking is performed by the search
engine's TFIDF based retrieval model. Our "re-ranking" model should manipulate the ranking of
this preselected list to ensure that the best candidates are placed on top. Furthermore, we
want to gain some understanding of the aspects that play a role in the learning and the ranking
procedure and how they relate to possible notions of suitability /relevance.
This task is challenging because we face a logical (i.e. given the already existing set-up) but
highly competitive baseline provided by the search ranking. Previous user feedback suggests
that the retrieval model used by the search engine already captures some notion of relevance
that has a correspondence to the suitability of candidates. The approach that this work follows
to tackle this challenge is one of machine learning, i.e. we want to learn a model from data
without having to craft a ranking function or ranking rules explicitly. This approach requires a
suitable dataset from which a ranking model can be learned. The details of the datasets that are
used in our project are given in the next section.
The practical motivation for our learning approach is the availability of a relatively large dataset
which contains real-world job ads, original CVs of the applicants for these jobs as well as
information about which candidates were hired in the end of the recruitment process. We will
refer to this dataset as the hiring decisions. Another, much smaller dataset contains human
relevance judgements for a number of job ads and CVs of people who did not necessarily apply
for the given job(in this thesis referred to as the relevance assessments).
qe.