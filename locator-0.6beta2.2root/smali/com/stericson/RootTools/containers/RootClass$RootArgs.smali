.class public Lcom/stericson/RootTools/containers/RootClass$RootArgs;
.super Ljava/lang/Object;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/containers/RootClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootArgs"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field final synthetic this$0:Lcom/stericson/RootTools/containers/RootClass;


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/containers/RootClass;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/stericson/RootTools/containers/RootClass$RootArgs;->this$0:Lcom/stericson/RootTools/containers/RootClass;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
