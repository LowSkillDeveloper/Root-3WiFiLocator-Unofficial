.class public Lcom/stericson/RootToolsTests/NativeJavaClass;
.super Ljava/lang/Object;
.source "NativeJavaClass.java"


# annotations
.annotation build Lcom/stericson/RootTools/containers/RootClass$Candidate;
.end annotation


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/containers/RootClass$RootArgs;)V
    .locals 14

    .prologue
    .line 13
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "NativeJavaClass says: oh hi there."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    const-string v9, "/data/data/com.android.browser/cache"

    move-object v2, v9

    .line 16
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 17
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 18
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 19
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Look at all the stuff in your browser\'s cache:"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 21
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 23
    :cond_0
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Leaving my mark for posterity..."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/roottools_was_here"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 26
    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v6, v9

    .line 27
    new-instance v9, Ljava/io/BufferedWriter;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v9

    .line 28
    move-object v9, v7

    const-string v10, "This is just a file created using RootTool\'s Sanity check tools..\n"

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 29
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 30
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Done!"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_1
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 32
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "...and I failed miserably."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
