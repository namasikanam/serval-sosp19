FROM unsat/serval-tools:artifact

RUN raco pkg install --auto

CMD export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib64"
CMD make -C test all
