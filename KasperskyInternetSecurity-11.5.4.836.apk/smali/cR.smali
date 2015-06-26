.class public final LcR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lte;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LcR;->a:Ljava/lang/String;

    return-void
.end method
