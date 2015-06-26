.class public final LeJ;
.super Lek;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lek;-><init>(ILjava/lang/String;)V

    .line 12
    iput-object p3, p0, LeJ;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LeJ;->a:Ljava/lang/String;

    return-object v0
.end method
