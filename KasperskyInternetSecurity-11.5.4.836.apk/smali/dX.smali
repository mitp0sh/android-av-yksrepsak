.class public final LdX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, LdX;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, LdX;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, LdX;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, LdX;->c:Ljava/lang/String;

    .line 35
    return-void
.end method
