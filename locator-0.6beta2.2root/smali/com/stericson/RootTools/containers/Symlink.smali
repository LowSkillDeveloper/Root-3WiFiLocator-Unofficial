.class public Lcom/stericson/RootTools/containers/Symlink;
.super Ljava/lang/Object;
.source "Symlink.java"


# instance fields
.field protected final file:Ljava/io/File;

.field protected final symlinkPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/stericson/RootTools/containers/Symlink;->file:Ljava/io/File;

    .line 33
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/stericson/RootTools/containers/Symlink;->symlinkPath:Ljava/io/File;

    .line 34
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Symlink;->file:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public getSymlinkPath()Ljava/io/File;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Symlink;->symlinkPath:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method
