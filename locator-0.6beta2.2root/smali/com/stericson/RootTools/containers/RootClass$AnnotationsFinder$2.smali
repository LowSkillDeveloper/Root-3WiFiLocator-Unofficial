.class Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$2;
.super Ljava/lang/Object;
.source "RootClass.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;->getBuiltPath()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$2;->this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    move v0, v2

    return v0
.end method
