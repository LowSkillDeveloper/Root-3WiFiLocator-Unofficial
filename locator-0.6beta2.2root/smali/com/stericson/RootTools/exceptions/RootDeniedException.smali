.class public Lcom/stericson/RootTools/exceptions/RootDeniedException;
.super Ljava/lang/Exception;
.source "RootDeniedException.java"


# static fields
.field private static final serialVersionUID:J = -0x78ee28d2a3ae4edeL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
