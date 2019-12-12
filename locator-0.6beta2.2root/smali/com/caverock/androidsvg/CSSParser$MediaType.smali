.class public final enum Lcom/caverock/androidsvg/CSSParser$MediaType;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum all:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum print:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tv:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 53
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "all"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 54
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "aural"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 55
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "braille"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 56
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "embossed"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 57
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "handheld"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 58
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "print"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->print:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 59
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "projection"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 60
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "screen"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 61
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "tty"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 62
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "tv"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->tv:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->print:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->tv:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 3

    .prologue
    .line 1
    move-object v0, p0

    const-class v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 9

    .prologue
    .line 1
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

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

    new-array v5, v5, [Lcom/caverock/androidsvg/CSSParser$MediaType;

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
