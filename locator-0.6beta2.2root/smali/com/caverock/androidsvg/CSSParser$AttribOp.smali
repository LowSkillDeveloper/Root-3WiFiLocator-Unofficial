.class final enum Lcom/caverock/androidsvg/CSSParser$AttribOp;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AttribOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$AttribOp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public static final enum INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXISTS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 75
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EQUALS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 76
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INCLUDES"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 77
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DASHMATCH"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    aput-object v3, v1, v2

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$AttribOp;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .locals 3

    .prologue
    .line 1
    move-object v0, p0

    const-class v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$AttribOp;
    .locals 9

    .prologue
    .line 1
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v0, v4

    const/4 v4, 0x0

    move-object v5, v0

    array-length v5, v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v1, v6

    new-array v5, v5, [Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
