.class public final Luo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LtU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->D()Lbb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    return-object v0
.end method
