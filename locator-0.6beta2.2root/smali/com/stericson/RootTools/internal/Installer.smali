.class Lcom/stericson/RootTools/internal/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field static final BOGUS_FILE_NAME:Ljava/lang/String; = "bogus"

.field static final LOG_TAG:Ljava/lang/String; = "RootTools::Installer"


# instance fields
.field context:Landroid/content/Context;

.field filesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    .line 63
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private commandWait(Lcom/stericson/RootTools/execution/Command;)V
    .locals 9

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 221
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    move-object v5, v1

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    :goto_0
    move-object v5, v2

    :try_start_1
    monitor-exit v5

    .line 228
    return-void

    .line 224
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 225
    const-string v5, "RootTools::Installer"

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5
.end method


# virtual methods
.method protected getFileSignature(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, p1

    const-string v4, ""

    move-object v2, v4

    .line 183
    move-object v4, v0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/stericson/RootTools/internal/Installer;->getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 187
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 184
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 185
    const-string v4, "RootTools::Installer"

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method protected getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 16

    .prologue
    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v11, ""

    move-object v2, v11

    .line 196
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    move-object v3, v11

    .line 197
    new-instance v11, Ljava/security/DigestInputStream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v12, v13, v14}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v4, v11

    .line 198
    const/16 v11, 0x1000

    new-array v11, v11, [B

    move-object v5, v11

    .line 199
    :goto_0
    const/4 v11, -0x1

    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/security/DigestInputStream;->read([B)I

    move-result v12

    if-eq v11, v12, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    move-object v11, v3

    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    move-object v6, v11

    .line 201
    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v11

    .line 203
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move-object v12, v6

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 204
    move-object v11, v7

    move-object v12, v6

    move v13, v8

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 206
    :cond_1
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    move-object v2, v11

    .line 213
    move-object v11, v1

    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :goto_2
    move-object v11, v2

    move-object v0, v11

    return-object v0

    .line 213
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 214
    goto :goto_2

    .line 207
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 208
    :try_start_2
    const-string v11, "RootTools::Installer"

    move-object v12, v3

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 213
    move-object v11, v1

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v11

    move-object v3, v11

    .line 214
    goto :goto_2

    .line 209
    :catch_3
    move-exception v11

    move-object v3, v11

    .line 210
    :try_start_4
    const-string v11, "RootTools::Installer"

    move-object v12, v3

    invoke-virtual {v12}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    .line 213
    move-object v11, v1

    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v11

    move-object v3, v11

    .line 214
    goto :goto_2

    .line 213
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v1

    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    move-object v11, v9

    throw v11

    :catch_5
    move-exception v11

    move-object v10, v11

    goto :goto_3
.end method

.method protected installBinary(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 30

    .prologue
    .line 79
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    new-instance v18, Ljava/io/File;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v18

    .line 80
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lcom/stericson/RootTools/internal/Installer;->getFileSignature(Ljava/io/File;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/stericson/RootTools/internal/Installer;->getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 85
    :cond_0
    const-string v18, "RootTools::Installer"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing a new version of binary: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 90
    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "bogus"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v18

    move-object/from16 v7, v18

    .line 91
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 118
    :goto_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v7, v18

    .line 119
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v18

    move-object/from16 v8, v18

    .line 120
    const/16 v18, 0x0

    move-object/from16 v9, v18

    .line 122
    :try_start_1
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v6

    invoke-direct/range {v19 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v9, v18

    .line 123
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v18

    move-object/from16 v10, v18

    .line 124
    const-wide/16 v18, 0x0

    move-wide/from16 v11, v18

    .line 126
    move-object/from16 v18, v7

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v13, v18

    .line 127
    :goto_1
    move-wide/from16 v18, v11

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v26, v11

    sub-long v24, v24, v26

    invoke-virtual/range {v20 .. v25}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v28, v18

    move-wide/from16 v18, v28

    move-wide/from16 v20, v28

    move-wide/from16 v11, v20

    move-wide/from16 v20, v13

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 129
    goto :goto_1

    .line 92
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 93
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 95
    move-object/from16 v18, v2

    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "bogus"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v18

    move-object/from16 v8, v18

    .line 96
    move-object/from16 v18, v8

    const-string v19, "justcreatedfilesdirectory"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    const/16 v18, 0x0

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 105
    move-object/from16 v18, v8

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 106
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "bogus"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v18

    .line 115
    :cond_1
    :goto_2
    goto/16 :goto_0

    .line 107
    :catch_1
    move-exception v18

    move-object/from16 v9, v18

    goto :goto_2

    .line 97
    :catch_2
    move-exception v18

    move-object/from16 v9, v18

    .line 98
    :try_start_5
    sget-boolean v18, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v18, :cond_2

    .line 99
    const-string v18, "RootTools::Installer"

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    .line 101
    :cond_2
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 103
    const/16 v18, 0x0

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 105
    move-object/from16 v18, v8

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 106
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "bogus"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v18

    .line 107
    :cond_3
    :goto_3
    move/from16 v18, v10

    move/from16 v2, v18

    .line 167
    :goto_4
    return v2

    .line 107
    :catch_3
    move-exception v18

    move-object/from16 v11, v18

    goto :goto_3

    .line 103
    :catchall_0
    move-exception v18

    move-object/from16 v12, v18

    const/16 v18, 0x0

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 105
    move-object/from16 v18, v8

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 106
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "bogus"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v18

    .line 107
    :cond_4
    :goto_5
    move-object/from16 v18, v12

    throw v18

    :catch_4
    move-exception v18

    move-object/from16 v13, v18

    goto :goto_5

    .line 110
    :catch_5
    move-exception v18

    move-object/from16 v7, v18

    .line 111
    sget-boolean v18, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v18, :cond_5

    .line 112
    const-string v18, "RootTools::Installer"

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 114
    :cond_5
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_4

    .line 142
    :cond_6
    move-object/from16 v18, v9

    if-eqz v18, :cond_7

    .line 144
    move-object/from16 v18, v9

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->sync()V

    .line 146
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 152
    :cond_7
    :goto_6
    move-object/from16 v18, v7

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 161
    :try_start_a
    new-instance v18, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v28, v25

    move-object/from16 v25, v28

    move-object/from16 v26, v28

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "chmod "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v5

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-direct/range {v19 .. v22}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object/from16 v10, v18

    .line 162
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v18

    .line 163
    move-object/from16 v18, v2

    move-object/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Lcom/stericson/RootTools/internal/Installer;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 167
    :cond_8
    :goto_7
    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_4

    .line 130
    :catch_6
    move-exception v18

    move-object/from16 v13, v18

    .line 131
    :try_start_b
    sget-boolean v18, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v18, :cond_9

    .line 132
    const-string v18, "RootTools::Installer"

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v18

    .line 134
    :cond_9
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 142
    move-object/from16 v18, v9

    if-eqz v18, :cond_a

    .line 144
    move-object/from16 v18, v9

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->sync()V

    .line 146
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 148
    :cond_a
    :goto_8
    move/from16 v18, v14

    move/from16 v2, v18

    goto/16 :goto_4

    .line 147
    :catch_7
    move-exception v18

    move-object/from16 v15, v18

    goto :goto_8

    :catch_8
    move-exception v18

    move-object/from16 v10, v18

    .line 148
    goto/16 :goto_6

    .line 136
    :catch_9
    move-exception v18

    move-object/from16 v10, v18

    .line 137
    :try_start_d
    sget-boolean v18, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v18, :cond_b

    .line 138
    const-string v18, "RootTools::Installer"

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v18

    .line 140
    :cond_b
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 142
    move-object/from16 v18, v9

    if-eqz v18, :cond_c

    .line 144
    move-object/from16 v18, v9

    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->sync()V

    .line 146
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 148
    :cond_c
    :goto_9
    move/from16 v18, v11

    move/from16 v2, v18

    goto/16 :goto_4

    .line 147
    :catch_a
    move-exception v18

    move-object/from16 v12, v18

    goto :goto_9

    .line 142
    :catchall_1
    move-exception v18

    move-object/from16 v16, v18

    move-object/from16 v18, v9

    if-eqz v18, :cond_d

    .line 144
    move-object/from16 v18, v9

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 145
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->sync()V

    .line 146
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 148
    :cond_d
    :goto_a
    move-object/from16 v18, v16

    throw v18

    .line 147
    :catch_b
    move-exception v18

    move-object/from16 v17, v18

    goto :goto_a

    .line 153
    :catch_c
    move-exception v18

    move-object/from16 v10, v18

    .line 154
    sget-boolean v18, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v18, :cond_e

    .line 155
    const-string v18, "RootTools::Installer"

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 157
    :cond_e
    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_4

    .line 165
    :catch_d
    move-exception v18

    move-object/from16 v10, v18

    goto/16 :goto_7
.end method

.method protected isBinaryInstalled(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 172
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/stericson/RootTools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 173
    move-object v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const/4 v4, 0x1

    move v2, v4

    .line 177
    :cond_0
    move v4, v2

    move v0, v4

    return v0
.end method
