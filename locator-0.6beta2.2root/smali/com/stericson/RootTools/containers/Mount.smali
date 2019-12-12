.class public Lcom/stericson/RootTools/containers/Mount;
.super Ljava/lang/Object;
.source "Mount.java"


# instance fields
.field final mDevice:Ljava/io/File;

.field final mFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mMountPoint:Ljava/io/File;

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    .line 38
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    .line 39
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    .line 40
    move-object v5, v0

    new-instance v6, Ljava/util/LinkedHashSet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    .line 41
    return-void
.end method


# virtual methods
.method public getDevice()Ljava/io/File;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public getFlags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    move-object v0, v1

    return-object v0
.end method

.method public getMountPoint()Ljava/io/File;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    const-string v1, "%s on %s type %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/containers/Mount;->mDevice:Ljava/io/File;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/containers/Mount;->mMountPoint:Ljava/io/File;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/containers/Mount;->mType:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/stericson/RootTools/containers/Mount;->mFlags:Ljava/util/Set;

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
