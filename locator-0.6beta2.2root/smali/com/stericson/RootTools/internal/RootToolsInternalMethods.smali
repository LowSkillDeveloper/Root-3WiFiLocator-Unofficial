.class public final Lcom/stericson/RootTools/internal/RootToolsInternalMethods;
.super Ljava/lang/Object;
.source "RootToolsInternalMethods.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private commandWait(Lcom/stericson/RootTools/execution/Command;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1439
    move-object v0, p0

    move-object v1, p1

    :cond_0
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1441
    const-string v5, "RootTools v3.4"

    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->getOpenShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/execution/Shell;->getCommandQueuePositionString(Lcom/stericson/RootTools/execution/Command;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    move-object v5, v1

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 1445
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1446
    move-object v5, v1

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    :cond_1
    :goto_1
    move-object v5, v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1453
    move-object v5, v1

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isExecuting()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/Command;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1454
    sget-boolean v5, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    if-nez v5, :cond_2

    .line 1455
    const-string v5, "RootTools v3.4"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for a command to be executed in a shell that is not executing and not reading! \n\n Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1456
    new-instance v5, Ljava/lang/Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    move-object v2, v5

    .line 1457
    move-object v5, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1458
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1459
    goto :goto_0

    .line 1448
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1449
    move-object v5, v3

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1451
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v4

    throw v5

    .line 1459
    :cond_2
    sget-boolean v5, Lcom/stericson/RootTools/execution/Shell;->isExecuting:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/stericson/RootTools/execution/Shell;->isReading:Z

    if-nez v5, :cond_3

    .line 1460
    const-string v5, "RootTools v3.4"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for a command to be executed in a shell that is executing but not reading! \n\n Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1461
    new-instance v5, Ljava/lang/Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    move-object v2, v5

    .line 1462
    move-object v5, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1463
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1464
    goto/16 :goto_0

    .line 1465
    :cond_3
    const-string v5, "RootTools v3.4"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting for a command to be executed in a shell that is not reading! \n\n Command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/stericson/RootTools/execution/Command;->getCommand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1466
    new-instance v5, Ljava/lang/Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    move-object v2, v5

    .line 1467
    move-object v5, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1468
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1469
    goto/16 :goto_0

    .line 1473
    :cond_4
    return-void
.end method

.method public static getInstance()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;-><init>()V

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->setRim(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;)V

    .line 66
    return-void
.end method


# virtual methods
.method public checkUtil(Ljava/lang/String;)Z
    .locals 10

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 308
    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 309
    move-object v7, v2

    sget-object v8, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 311
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v7

    move-object v5, v7

    .line 315
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 318
    move-object v7, v5

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_1

    .line 319
    move-object v7, v5

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 323
    :goto_1
    move-object v7, v6

    const-string v8, "755"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v6

    const-string v8, "777"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v6

    const-string v8, "775"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    .line 326
    const/4 v7, 0x1

    move v0, v7

    .line 332
    :goto_2
    return v0

    .line 321
    :cond_1
    move-object v7, v5

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 329
    :cond_2
    goto/16 :goto_0

    .line 332
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 19

    .prologue
    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v9, 0x0

    move-object v5, v9

    .line 207
    const/4 v9, 0x1

    move v6, v9

    .line 211
    move v9, v3

    if-eqz v9, :cond_0

    .line 212
    move-object v9, v2

    :try_start_0
    const-string v10, "RW"

    invoke-static {v9, v10}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 216
    :cond_0
    move-object v9, v0

    const-string v10, "cp"

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 217
    const-string v9, "cp command is available!"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 219
    move v9, v4

    if-eqz v9, :cond_4

    .line 220
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cp -fp "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 221
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 222
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 225
    move-object v9, v5

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/CommandCapture;->getExitCode()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    move v6, v9

    .line 281
    :goto_1
    move v9, v3

    if-eqz v9, :cond_1

    .line 282
    move-object v9, v2

    const-string v10, "RO"

    invoke-static {v9, v10}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 289
    :cond_1
    :goto_2
    move-object v9, v5

    if-eqz v9, :cond_2

    .line 291
    move-object v9, v5

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/CommandCapture;->getExitCode()I

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 294
    :cond_2
    move v9, v6

    move v0, v9

    return v0

    .line 225
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 228
    :cond_4
    :try_start_1
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cp -f "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 229
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 230
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 233
    move-object v9, v5

    invoke-virtual {v9}, Lcom/stericson/RootTools/execution/CommandCapture;->getExitCode()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    move v6, v9

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 237
    :cond_6
    move-object v9, v0

    const-string v10, "busybox"

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v0

    const-string v10, "cp"

    const-string v11, "busybox"

    invoke-virtual {v9, v10, v11}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 238
    const-string v9, "busybox cp command is available!"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 240
    move v9, v4

    if-eqz v9, :cond_7

    .line 241
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "busybox cp -fp "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 242
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 243
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    goto/16 :goto_1

    .line 246
    :cond_7
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "busybox cp -f "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 247
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 248
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    goto/16 :goto_1

    .line 253
    :cond_8
    move-object v9, v0

    const-string v10, "cat"

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 254
    const-string v9, "cp is not available, use cat!"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 256
    const/4 v9, -0x1

    move v7, v9

    .line 257
    move v9, v4

    if-eqz v9, :cond_9

    .line 259
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v9

    move-object v8, v9

    .line 260
    move-object v9, v8

    invoke-virtual {v9}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v9

    move v7, v9

    .line 264
    :cond_9
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "cat "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " > "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 265
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 266
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 268
    move v9, v4

    if-eqz v9, :cond_a

    .line 270
    new-instance v9, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "chmod "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v10, v11, v12, v13}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v5, v9

    .line 271
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 272
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :cond_a
    goto/16 :goto_1

    .line 275
    :cond_b
    const/4 v9, 0x0

    move v6, v9

    goto/16 :goto_1

    .line 284
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 285
    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const/4 v9, 0x0

    move v6, v9

    goto/16 :goto_2

    .line 291
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method public deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 15

    .prologue
    .line 344
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v5, 0x1

    move v3, v5

    .line 348
    move v5, v2

    if-eqz v5, :cond_0

    .line 349
    move-object v5, v1

    :try_start_0
    const-string v6, "RW"

    invoke-static {v5, v6}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 352
    :cond_0
    move-object v5, v0

    const-string v6, "rm"

    const-string v7, "toolbox"

    invoke-virtual {v5, v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    const-string v5, "rm command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 355
    new-instance v5, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rm -r "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v4, v5

    .line 356
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    .line 357
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 359
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/CommandCapture;->getExitCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    const-string v5, "target not exist or unable to delete file"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 361
    const/4 v5, 0x0

    move v3, v5

    .line 379
    :cond_1
    :goto_0
    move v5, v2

    if-eqz v5, :cond_2

    .line 380
    move-object v5, v1

    const-string v6, "RO"

    invoke-static {v5, v6}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 387
    :cond_2
    :goto_1
    move v5, v3

    move v0, v5

    return v0

    .line 364
    :cond_3
    move-object v5, v0

    const-string v6, "busybox"

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    const-string v6, "rm"

    const-string v7, "busybox"

    invoke-virtual {v5, v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    const-string v5, "busybox cp command is available!"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 367
    new-instance v5, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "busybox rm -rf "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v4, v5

    .line 368
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    .line 369
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 371
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/execution/CommandCapture;->getExitCode()I

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    const-string v5, "target not exist or unable to delete file"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 382
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 383
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 18

    .prologue
    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 400
    new-instance v7, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ls "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$1;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v7

    .line 410
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->isAnyShellOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 411
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v7

    .line 412
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 424
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 425
    const/4 v7, 0x1

    move v0, v7

    .line 453
    :goto_2
    return v0

    .line 416
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->getOpenShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v7

    .line 417
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 420
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 425
    :cond_1
    goto :goto_1

    .line 430
    :cond_2
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->closeShell(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 434
    :goto_3
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 436
    :try_start_3
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v7

    .line 437
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 444
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 445
    move-object v7, v4

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 447
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_4
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 448
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 449
    const/4 v7, 0x1

    move v0, v7

    goto :goto_2

    .line 431
    :catch_1
    move-exception v7

    move-object v4, v7

    goto :goto_3

    .line 439
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 440
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 449
    :cond_3
    goto :goto_4

    .line 453
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method

.method public findBinary(Ljava/lang/String;)Z
    .locals 21

    .prologue
    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x0

    move v2, v10

    .line 534
    sget-object v10, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 536
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 537
    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x0

    const-string v13, "/sbin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x1

    const-string v13, "/system/bin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x2

    const-string v13, "/system/xbin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x3

    const-string v13, "/data/local/xbin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x4

    const-string v13, "/data/local/bin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x5

    const-string v13, "/system/sd/xbin/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x6

    const-string v13, "/system/bin/failsafe/"

    aput-object v13, v11, v12

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const/4 v12, 0x7

    const-string v13, "/data/local/"

    aput-object v13, v11, v12

    move-object v4, v10

    .line 540
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 544
    move-object v10, v4

    move-object v5, v10

    move-object v10, v5

    :try_start_0
    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_0

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 545
    new-instance v10, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v20, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v20

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "stat "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    invoke-direct/range {v11 .. v18}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$2;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v9, v10

    .line 558
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v10

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v10

    .line 559
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 544
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 563
    :cond_0
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v2, v10

    .line 568
    :goto_2
    move v10, v2

    if-nez v10, :cond_3

    .line 569
    const-string v10, "Trying second method"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 571
    move-object v10, v4

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_3
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_3

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 572
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 574
    move-object v10, v3

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 575
    const/4 v10, 0x1

    move v2, v10

    .line 571
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 563
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 564
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 565
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 577
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was NOT found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 582
    :cond_3
    move v10, v2

    if-nez v10, :cond_5

    .line 583
    const-string v10, "Trying third method"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 586
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/List;

    move-result-object v10

    move-object v5, v10

    .line 588
    move-object v10, v5

    if-eqz v10, :cond_6

    .line 589
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_5
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 590
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 591
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 592
    move-object v10, v3

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 593
    const/4 v10, 0x1

    move v2, v10

    .line 595
    :goto_6
    goto :goto_5

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was NOT found here: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 599
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 600
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was not found, more information MAY be available with Debugging on."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 604
    :cond_5
    :goto_7
    move-object v10, v3

    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 606
    sget-object v10, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    move-object v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    .line 608
    move v10, v2

    move v0, v10

    return v0

    .line 601
    :cond_6
    goto :goto_7
.end method

.method public fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    const-string v7, "/system"

    const-string v8, "rw"

    invoke-static {v7, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 471
    move-object v7, v1

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 472
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 473
    move-object v7, v3

    sget-object v8, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 474
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 475
    new-instance v7, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rm "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v8, v9, v10, v11}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v6, v7

    .line 476
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v7

    .line 477
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 479
    goto :goto_0

    .line 481
    :cond_0
    new-instance v7, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ln -s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " /system/bin/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " chmod 0755 /system/bin/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v8, v9, v10, v11}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v4, v7

    .line 482
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v7

    .line 483
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 487
    :cond_1
    const-string v7, "/system"

    const-string v8, "ro"

    invoke-static {v7, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 490
    :goto_1
    return-void

    .line 488
    :catch_0
    move-exception v7

    move-object v3, v7

    goto :goto_1
.end method

.method public fixUtils([Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 506
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 507
    move-object v6, v0

    const-string v7, "busybox"

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 508
    move-object v6, v0

    move-object v7, v5

    const-string v8, "busybox"

    invoke-virtual {v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 509
    move-object v6, v0

    move-object v7, v5

    sget-object v8, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 512
    :cond_1
    move-object v6, v0

    const-string v7, "toolbox"

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 513
    move-object v6, v0

    move-object v7, v5

    const-string v8, "toolbox"

    invoke-virtual {v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 514
    move-object v6, v0

    move-object v7, v5

    sget-object v8, Lcom/stericson/RootTools/RootTools;->utilPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    .line 523
    :goto_2
    return v0

    :cond_3
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2
.end method

.method public getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 620
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 627
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 629
    new-instance v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "busybox --list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v4

    .line 640
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v4

    .line 641
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 643
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 622
    :cond_1
    move-object v4, v1

    if-nez v4, :cond_0

    .line 624
    new-instance v4, Ljava/lang/Exception;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Path is null, please specifiy a path"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 651
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 655
    :cond_0
    const-string v3, "Getting BusyBox Version"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 656
    const-string v3, ""

    sput-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    .line 658
    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$4;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "busybox"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$4;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 669
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 670
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    move-object v0, v3

    :goto_0
    return-object v0

    .line 672
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 673
    const-string v3, "BusyBox was not found, more information MAY be available with Debugging on."

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 674
    const-string v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public getConvertedSpace(Ljava/lang/String;)J
    .locals 12

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, p1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v2, v7

    .line 687
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v7

    .line 688
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 689
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v4, v7

    .line 690
    move v7, v4

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v4

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    .line 691
    move v7, v4

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_2

    .line 692
    :cond_0
    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    move-wide v2, v7

    .line 700
    :cond_1
    :goto_1
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide v9, v2

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-long v7, v7

    move-wide v0, v7

    .line 702
    :goto_2
    return-wide v0

    .line 693
    :cond_2
    move v7, v4

    const/16 v8, 0x67

    if-eq v7, v8, :cond_3

    move v7, v4

    const/16 v8, 0x47

    if-ne v7, v8, :cond_1

    .line 694
    :cond_3
    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    move-wide v2, v7

    goto :goto_1

    .line 698
    :cond_4
    move-object v7, v5

    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 688
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 701
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 702
    const-wide/16 v7, -0x1

    move-wide v0, v7

    goto :goto_2
.end method

.method public getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 14

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 811
    move-object v3, v1

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 815
    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ls -l "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "busybox ls -l "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/bin/failsafe/toolbox ls -l "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "toolbox ls -l "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 851
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 852
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 854
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 862
    :goto_0
    return-object v0

    .line 856
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 857
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 858
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 862
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$5;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v5, v0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/local/ls -i "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$5;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 726
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 727
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 729
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->inode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 731
    :goto_0
    return-object v0

    .line 730
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 731
    const-string v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 935
    sget-object v5, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 936
    sget-object v5, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :cond_0
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stericson/RootTools/containers/Mount;

    move-object v4, v5

    .line 938
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/containers/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 940
    move-object v5, v2

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 941
    move-object v5, v1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 942
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    .line 951
    :goto_1
    return-object v0

    .line 949
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 950
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 951
    move-object v5, v4

    invoke-virtual {v5}, Lcom/stericson/RootTools/containers/Mount;->getFlags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    goto :goto_1

    :cond_3
    goto/16 :goto_0

    .line 955
    :cond_4
    new-instance v5, Ljava/lang/Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v5

    .line 957
    :cond_5
    new-instance v5, Ljava/lang/Exception;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v5
.end method

.method public getMounts()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 876
    move-object/from16 v0, p0

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v11

    move-object v1, v11

    .line 878
    new-instance v11, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    const-string v18, "cat /proc/mounts > /data/local/RootToolsMounts"

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    const-string v18, "chmod 0777 /data/local/RootToolsMounts"

    aput-object v18, v16, v17

    invoke-direct {v12, v13, v14, v15}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v2, v11

    .line 882
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v11, v12}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v11

    .line 883
    move-object v11, v0

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 885
    const/4 v11, 0x0

    move-object v3, v11

    .line 886
    const/4 v11, 0x0

    move-object v4, v11

    .line 889
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    const-string v13, "/data/local/RootToolsMounts"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v4, v11

    .line 890
    new-instance v11, Ljava/io/LineNumberReader;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v4

    invoke-direct {v12, v13}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v11

    .line 892
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v11

    .line 893
    :goto_0
    move-object v11, v3

    invoke-virtual {v11}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v5, v12

    if-eqz v11, :cond_0

    .line 895
    move-object v11, v5

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 897
    move-object v11, v5

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 898
    move-object v11, v6

    new-instance v12, Lcom/stericson/RootTools/containers/Mount;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/io/File;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v7

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget-object v16, v16, v17

    move-object/from16 v17, v7

    const/16 v18, 0x3

    aget-object v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/stericson/RootTools/containers/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 903
    goto :goto_0

    .line 904
    :cond_0
    move-object v11, v6

    sput-object v11, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    .line 906
    sget-object v11, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 907
    sget-object v11, Lcom/stericson/RootTools/internal/InternalVariables;->mounts:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v11

    .line 913
    move-object v11, v4

    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 914
    const/4 v11, 0x0

    move-object v4, v11

    .line 918
    :goto_1
    move-object v11, v3

    :try_start_2
    invoke-virtual {v11}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 919
    const/4 v11, 0x0

    move-object v3, v11

    .line 920
    :goto_2
    move-object v11, v7

    move-object v0, v11

    return-object v0

    .line 915
    :catch_0
    move-exception v11

    move-object v8, v11

    goto :goto_1

    .line 920
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_2

    .line 909
    :cond_1
    :try_start_3
    new-instance v11, Ljava/lang/Exception;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 912
    :catchall_0
    move-exception v11

    move-object v9, v11

    .line 913
    move-object v11, v4

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 914
    const/4 v11, 0x0

    move-object v4, v11

    .line 918
    :goto_3
    move-object v11, v3

    :try_start_5
    invoke-virtual {v11}, Ljava/io/LineNumberReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 919
    const/4 v11, 0x0

    move-object v3, v11

    .line 920
    :goto_4
    move-object v11, v9

    throw v11

    .line 915
    :catch_2
    move-exception v11

    move-object v10, v11

    goto :goto_3

    .line 920
    :catch_3
    move-exception v11

    move-object v10, v11

    goto :goto_4
.end method

.method public getPermissions(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 11

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 105
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v3, v6

    .line 107
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_1

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x72

    if-ne v6, v7, :cond_3

    :cond_1
    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_2

    move-object v6, v3

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x77

    if-ne v6, v7, :cond_3

    .line 113
    :cond_2
    move-object v6, v3

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 115
    new-instance v6, Lcom/stericson/RootTools/containers/Permissions;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/stericson/RootTools/containers/Permissions;-><init>()V

    move-object v4, v6

    .line 117
    move-object v6, v4

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setType(Ljava/lang/String;)V

    .line 119
    move-object v6, v4

    invoke-virtual {v6}, Lcom/stericson/RootTools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 121
    move-object v6, v4

    move-object v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setUserPermissions(Ljava/lang/String;)V

    .line 123
    move-object v6, v4

    invoke-virtual {v6}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 125
    move-object v6, v4

    move-object v7, v3

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setGroupPermissions(Ljava/lang/String;)V

    .line 127
    move-object v6, v4

    invoke-virtual {v6}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 129
    move-object v6, v4

    move-object v7, v3

    const/4 v8, 0x7

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setOtherPermissions(Ljava/lang/String;)V

    .line 131
    move-object v6, v4

    invoke-virtual {v6}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    .line 134
    move-object v6, v5

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parseSpecialPermissions(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 135
    move-object v6, v5

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 136
    move-object v6, v5

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    move-object v6, v5

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->parsePermissions(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/containers/Permissions;->setPermissions(I)V

    .line 141
    move-object v6, v4

    move-object v0, v6

    .line 144
    :goto_0
    return-object v0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public getSpace(Ljava/lang/String;)J
    .locals 20

    .prologue
    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    sput-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->getSpaceFor:Ljava/lang/String;

    .line 971
    const/4 v9, 0x0

    move v2, v9

    .line 972
    const-string v9, "Looking for Space"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 974
    :try_start_0
    new-instance v9, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "df "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$8;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    move-object v3, v9

    .line 985
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v9

    .line 986
    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_0
    sget-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 991
    const-string v9, "First Method"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 993
    sget-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    move-object v3, v9

    move-object v9, v3

    array-length v9, v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_2

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 995
    move-object v9, v6

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 997
    move v9, v2

    if-eqz v9, :cond_0

    .line 998
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v9

    move-wide v0, v9

    .line 1026
    :goto_2
    return-wide v0

    .line 988
    :catch_0
    move-exception v9

    move-object v3, v9

    goto :goto_0

    .line 999
    :cond_0
    move-object v9, v6

    const-string v10, "used,"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1000
    const/4 v9, 0x1

    move v2, v9

    .line 993
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1005
    :cond_2
    const/4 v9, 0x0

    move v3, v9

    const/4 v9, 0x3

    move v4, v9

    .line 1007
    const-string v9, "Second Method"

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1009
    sget-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_3

    .line 1010
    const/4 v9, 0x2

    move v4, v9

    .line 1013
    :cond_3
    sget-object v9, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_6

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 1015
    move-object v9, v8

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1016
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 1017
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Valid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1018
    move v9, v3

    move v10, v4

    if-ne v9, v10, :cond_4

    .line 1019
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getConvertedSpace(Ljava/lang/String;)J

    move-result-wide v9

    move-wide v0, v9

    goto :goto_2

    .line 1021
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 1013
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1025
    :cond_6
    const-string v9, "Returning -1, space could not be determined."

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1026
    const-wide/16 v9, -0x1

    move-wide v0, v9

    goto :goto_2
.end method

.method public getSymLinks()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    move-object/from16 v1, p0

    const/4 v10, 0x0

    move-object v2, v10

    .line 71
    const/4 v10, 0x0

    move-object v3, v10

    .line 75
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "/data/local/symlinks.txt"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 76
    new-instance v10, Ljava/io/LineNumberReader;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v3

    invoke-direct {v11, v12}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v10

    .line 79
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 81
    :goto_0
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v4, v11

    if-eqz v10, :cond_0

    .line 83
    move-object v10, v4

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 85
    move-object v10, v4

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 86
    move-object v10, v5

    new-instance v11, Lcom/stericson/RootTools/containers/Symlink;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    new-instance v13, Ljava/io/File;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x3

    add-int/lit8 v16, v16, -0x3

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget-object v16, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13, v14}, Lcom/stericson/RootTools/containers/Symlink;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-object v10, v5

    move-object v6, v10

    .line 93
    move-object v10, v3

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :goto_1
    move-object v10, v2

    :try_start_2
    invoke-virtual {v10}, Ljava/io/LineNumberReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :goto_2
    move-object v10, v6

    move-object v1, v10

    return-object v1

    .line 94
    :catch_0
    move-exception v10

    move-object v7, v10

    goto :goto_1

    .line 98
    :catch_1
    move-exception v10

    move-object v7, v10

    goto :goto_2

    .line 92
    :catchall_0
    move-exception v10

    move-object v8, v10

    .line 93
    move-object v10, v3

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :goto_3
    move-object v10, v2

    :try_start_4
    invoke-virtual {v10}, Ljava/io/LineNumberReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 98
    :goto_4
    move-object v10, v8

    throw v10

    .line 94
    :catch_2
    move-exception v10

    move-object v9, v10

    goto :goto_3

    .line 98
    :catch_3
    move-exception v10

    move-object v9, v10

    goto :goto_4
.end method

.method public getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .prologue
    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for Symlink for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1041
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 1043
    new-instance v6, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ls -l "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$9;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v6

    .line 1054
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v6

    .line 1055
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 1057
    move-object v6, v2

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 1058
    move-object v6, v4

    array-length v6, v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    move-object v6, v4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    aget-object v6, v6, v7

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1059
    const-string v6, "Symlink found."

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1061
    const-string v6, ""

    move-object v5, v6

    .line 1062
    move-object v6, v4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1064
    move-object v6, v0

    move-object v7, v4

    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->findBinary(Ljava/lang/String;)Z

    move-result v6

    .line 1065
    sget-object v6, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1067
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    move-object v8, v4

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1076
    :goto_0
    move-object v6, v5

    move-object v0, v6

    .line 1084
    :goto_1
    return-object v0

    .line 1070
    :cond_0
    move-object v6, v4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    move-object v5, v6

    goto :goto_0

    .line 1073
    :cond_1
    move-object v6, v4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 1083
    :cond_2
    :goto_2
    const-string v6, "Symlink not found"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1084
    const-string v6, ""

    move-object v0, v6

    goto :goto_1

    .line 1078
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1079
    sget-boolean v6, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v6, :cond_2

    .line 1080
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1100
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "find"

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    new-instance v3, Ljava/lang/Exception;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 1104
    :cond_0
    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-string v10, "dd if=/dev/zero of=/data/local/symlinks.txt bs=1024 count=1"

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const-string v10, "chmod 0777 /data/local/symlinks.txt"

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 1105
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 1106
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 1108
    new-instance v3, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -type l -exec ls -l {} \\; > /data/local/symlinks.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v2, v3

    .line 1109
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 1110
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 1112
    move-object v3, v0

    invoke-virtual {v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymLinks()Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    .line 1113
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1114
    sget-object v3, Lcom/stericson/RootTools/internal/InternalVariables;->symlinks:Ljava/util/ArrayList;

    move-object v0, v3

    return-object v0

    .line 1116
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v3
.end method

.method public getWorkingToolbox()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1128
    move-object v0, p0

    const-string v1, "busybox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    const-string v1, "busybox"

    move-object v0, v1

    .line 1133
    :goto_0
    return-object v0

    .line 1130
    :cond_0
    const-string v1, "toolbox"

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    const-string v1, "toolbox"

    move-object v0, v1

    goto :goto_0

    .line 1133
    :cond_1
    const-string v1, ""

    move-object v0, v1

    goto :goto_0
.end method

.method public hasEnoughSpaceOnSdCard(J)Z
    .locals 17

    .prologue
    .line 1146
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v10, "Checking SDcard size and that it is mounted as RW"

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1147
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1148
    move-object v10, v3

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1149
    const/4 v10, 0x0

    move v0, v10

    .line 1155
    :goto_0
    return v0

    .line 1151
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    move-object v4, v10

    .line 1152
    new-instance v10, Landroid/os/StatFs;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 1153
    move-object v10, v5

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    move-wide v6, v10

    .line 1154
    move-object v10, v5

    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    move-wide v8, v10

    .line 1155
    move-wide v10, v1

    move-wide v12, v8

    move-wide v14, v6

    mul-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v0, v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    .prologue
    .line 1167
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    sput-boolean v4, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    .line 1170
    move-object v4, v2

    const-string v5, "toolbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "busybox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1171
    const/4 v4, 0x0

    move v0, v4

    .line 1205
    :goto_0
    return v0

    .line 1176
    :cond_0
    :try_start_0
    new-instance v4, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v2

    const-string v13, "toolbox"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    aput-object v12, v10, v11

    move-object v10, v2

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$10;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 1193
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v4

    .line 1194
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 1196
    sget-boolean v4, Lcom/stericson/RootTools/internal/InternalVariables;->found:Z

    if-eqz v4, :cond_2

    .line 1197
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box contains "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " util!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1198
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 1176
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " --list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1200
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box does not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " util!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 1203
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1204
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1205
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    :try_start_0
    new-instance v7, Lcom/stericson/RootTools/internal/Installer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/stericson/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 1233
    move-object v7, v5

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/stericson/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move v0, v7

    :goto_0
    return v0

    .line 1226
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 1227
    sget-boolean v7, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v7, :cond_0

    .line 1228
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1230
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public isAccessGiven()Z
    .locals 12

    .prologue
    .line 741
    move-object v0, p0

    :try_start_0
    const-string v2, "Checking for Root access"

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 742
    const/4 v2, 0x0

    sput-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z

    .line 744
    new-instance v2, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "id"

    aput-object v10, v8, v9

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;)V

    move-object v1, v2

    .line 764
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v2

    .line 765
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 767
    sget-boolean v2, Lcom/stericson/RootTools/internal/InternalVariables;->accessGiven:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 768
    const/4 v2, 0x1

    move v0, v2

    .line 775
    :goto_0
    return v0

    .line 770
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 773
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 774
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 1268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 1269
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1270
    const/4 v5, 0x1

    move v0, v5

    .line 1276
    :goto_1
    return v0

    .line 1270
    :cond_0
    goto :goto_0

    .line 1273
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 1274
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1275
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1276
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    new-instance v5, Lcom/stericson/RootTools/internal/Installer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/stericson/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 1256
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v5

    move v0, v5

    :goto_0
    return v0

    .line 1249
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1250
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_0

    .line 1251
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1253
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 10

    .prologue
    .line 780
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const-string v5, "Preparing Native Tools"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 781
    const/4 v5, 0x0

    sput-boolean v5, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    .line 785
    :try_start_0
    new-instance v5, Lcom/stericson/RootTools/internal/Installer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/stericson/RootTools/internal/Installer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 793
    move-object v5, v3

    const-string v6, "nativetools"

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/internal/Installer;->isBinaryInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 794
    const/4 v5, 0x1

    sput-boolean v5, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    .line 799
    :goto_0
    sget-boolean v5, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    move v0, v5

    :goto_1
    return v0

    .line 786
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 787
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_0

    .line 788
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 790
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 796
    :cond_1
    move-object v5, v3

    move v6, v1

    const-string v7, "nativetools"

    const-string v8, "700"

    invoke-virtual {v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/Installer;->installBinary(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/stericson/RootTools/internal/InternalVariables;->nativeToolsReady:Z

    goto :goto_0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 1289
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checks if process is running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1291
    const/4 v3, 0x0

    sput-boolean v3, Lcom/stericson/RootTools/internal/InternalVariables;->processRunning:Z

    .line 1294
    :try_start_0
    new-instance v3, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string v11, "ps"

    aput-object v11, v9, v10

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$11;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1302
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v3

    .line 1303
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :goto_0
    sget-boolean v3, Lcom/stericson/RootTools/internal/InternalVariables;->processRunning:Z

    move v0, v3

    return v0

    .line 1305
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1306
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public killProcess(Ljava/lang/String;)Z
    .locals 15

    .prologue
    .line 1319
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Killing process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1321
    const-string v5, ""

    sput-object v5, Lcom/stericson/RootTools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    .line 1324
    const/4 v5, 0x1

    sput-boolean v5, Lcom/stericson/RootTools/internal/InternalVariables;->processRunning:Z

    .line 1328
    :try_start_0
    new-instance v5, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$12;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-string v13, "ps"

    aput-object v13, v11, v12

    move-object v11, v1

    invoke-direct/range {v6 .. v11}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$12;-><init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;IZ[Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 1352
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    .line 1353
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V

    .line 1356
    sget-object v5, Lcom/stericson/RootTools/internal/InternalVariables;->pid_list:Ljava/lang/String;

    move-object v3, v5

    .line 1359
    move-object v5, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 1362
    :try_start_1
    new-instance v5, Lcom/stericson/RootTools/execution/CommandCapture;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "kill -9 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v6, v7, v8, v9}, Lcom/stericson/RootTools/execution/CommandCapture;-><init>(IZ[Ljava/lang/String;)V

    move-object v2, v5

    .line 1363
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v5

    .line 1364
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->commandWait(Lcom/stericson/RootTools/execution/Command;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1366
    const/4 v5, 0x1

    move v0, v5

    .line 1378
    :goto_0
    return v0

    .line 1367
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1368
    move-object v5, v4

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1378
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1372
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1374
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 1375
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 9

    .prologue
    .line 1402
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v4, "Launching Market for BusyBox"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1403
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "market://details?id=stericson.busybox"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v4

    .line 1405
    move-object v4, v1

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1406
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public offerBusyBox(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 1387
    move-object v0, p0

    move-object v1, p1

    const-string v3, "Launching Market for BusyBox"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1388
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "market://details?id=stericson.busybox"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v3

    .line 1390
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1391
    return-void
.end method

.method public offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 9

    .prologue
    .line 1430
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v4, "Launching Market for SuperUser"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1431
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "market://details?id=com.noshufou.android.su"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v4

    .line 1433
    move-object v4, v1

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1434
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public offerSuperUser(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 1415
    move-object v0, p0

    move-object v1, p1

    const-string v3, "Launching Market for SuperUser"

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1416
    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "market://details?id=com.noshufou.android.su"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v3

    .line 1418
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1419
    return-void
.end method

.method public parsePermissions(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x72

    if-ne v3, v4, :cond_0

    .line 150
    const/4 v3, 0x4

    move v2, v3

    .line 154
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 157
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x77

    if-ne v3, v4, :cond_1

    .line 158
    add-int/lit8 v2, v2, 0x2

    .line 162
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 165
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 170
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 173
    move v3, v2

    move v0, v3

    return v0

    .line 152
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto/16 :goto_0

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x0

    goto/16 :goto_1

    .line 168
    :cond_2
    add-int/lit8 v2, v2, 0x0

    goto :goto_2
.end method

.method public parseSpecialPermissions(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 178
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    .line 179
    add-int/lit8 v2, v2, 0x4

    .line 181
    :cond_0
    move-object v3, v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_1

    .line 182
    add-int/lit8 v2, v2, 0x2

    .line 184
    :cond_1
    move-object v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_2

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 187
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 189
    move v3, v2

    move v0, v3

    return v0
.end method
