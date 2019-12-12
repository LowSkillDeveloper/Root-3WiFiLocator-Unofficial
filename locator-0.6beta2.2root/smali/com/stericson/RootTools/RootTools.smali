.class public final Lcom/stericson/RootTools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# static fields
.field public static debugMode:Z

.field public static default_Command_Timeout:I

.field public static handlerEnabled:Z

.field public static lastFoundBinaryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field public static utilPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->handlerEnabled:Z

    .line 100
    const/16 v0, 0x4e20

    sput v0, Lcom/stericson/RootTools/RootTools;->default_Command_Timeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUtil(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeAll()V

    .line 130
    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeCustomShell()V

    .line 139
    return-void
.end method

.method public static closeShell(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    move v0, p0

    move v1, v0

    if-eqz v1, :cond_0

    .line 149
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeRootShell()V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeShell()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 9

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 189
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->exists(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->findBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static fixUtils([Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtils([Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getBusyBoxApplets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 253
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 264
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getBusyBoxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/execution/Shell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lcom/stericson/RootTools/RootTools;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 3

    .prologue
    .line 301
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static final getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInstance()V

    .line 71
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    goto :goto_0
.end method

.method public static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
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
    .line 325
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/RootTools/execution/Shell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 391
    move v0, p0

    move v1, v0

    const/16 v2, 0x61a8

    invoke-static {v1, v2}, Lcom/stericson/RootTools/RootTools;->getShell(ZI)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getShell(ZI)Lcom/stericson/RootTools/execution/Shell;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 378
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/stericson/RootTools/RootTools;->getShell(ZII)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getShell(ZII)Lcom/stericson/RootTools/execution/Shell;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 361
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    if-eqz v3, :cond_0

    .line 362
    move v3, v1

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v0, v3

    .line 364
    :goto_0
    return-object v0

    :cond_0
    move v3, v1

    invoke-static {v3}, Lcom/stericson/RootTools/execution/Shell;->startShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getSpace(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 403
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSpace(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 415
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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
    .line 429
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getWorkingToolbox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasBinary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isBinaryAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 5

    .prologue
    .line 452
    move-wide v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-wide v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasEnoughSpaceOnSdCard(J)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7

    .prologue
    .line 495
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const-string v6, "700"

    invoke-static {v3, v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v4

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static isAccessGiven()Z
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, v0

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/stericson/RootTools/RootTools;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static isBusyboxAvailable()Z
    .locals 1

    .prologue
    .line 545
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 5

    .prologue
    .line 549
    move v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isNativeToolsReady(ILandroid/content/Context;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 561
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isRootAvailable()Z
    .locals 1

    .prologue
    .line 568
    const-string v0, "su"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static islog()Z
    .locals 1

    .prologue
    .line 755
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    return v0
.end method

.method public static killProcess(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->killProcess(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 697
    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 698
    return-void
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 7

    .prologue
    .line 732
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 733
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 714
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 715
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 7

    .prologue
    .line 774
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 775
    sget-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v4, :cond_1

    .line 776
    move-object v4, v0

    if-nez v4, :cond_0

    .line 777
    const-string v4, "RootTools v3.4"

    move-object v0, v4

    .line 780
    :cond_0
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 782
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 783
    goto :goto_0

    .line 785
    :pswitch_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 786
    goto :goto_0

    .line 788
    :pswitch_2
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 600
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;)V

    .line 589
    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 621
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;)V

    .line 610
    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/stericson/RootTools/internal/Remounter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/stericson/RootTools/internal/Remounter;-><init>()V

    move-object v2, v3

    .line 642
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/stericson/RootTools/internal/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static restartAndroid()V
    .locals 1

    .prologue
    .line 653
    const-string v0, "Restart Android"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 654
    const-string v0, "zygote"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->killProcess(Ljava/lang/String;)Z

    move-result v0

    .line 655
    return-void
.end method

.method public static runBinary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 666
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/stericson/RootTools/internal/Runner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/stericson/RootTools/internal/Runner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 667
    move-object v4, v3

    invoke-virtual {v4}, Lcom/stericson/RootTools/internal/Runner;->start()V

    .line 668
    return-void
.end method

.method public static runShellCommand(Lcom/stericson/RootTools/execution/Shell;Lcom/stericson/RootTools/execution/Command;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    move-result-object v2

    .line 682
    return-void
.end method

.method public static setRim(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;)V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 66
    return-void
.end method
