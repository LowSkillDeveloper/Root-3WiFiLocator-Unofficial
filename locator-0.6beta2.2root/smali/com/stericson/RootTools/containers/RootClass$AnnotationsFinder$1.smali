.class Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$1;
.super Ljava/lang/Object;
.source "RootClass.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;->lookup(Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;

.field final synthetic val$fileNamePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$1;->this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$1;->val$fileNamePrefix:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$1;->val$fileNamePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method
