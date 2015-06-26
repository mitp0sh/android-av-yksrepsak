.class public final LqN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrT;


# instance fields
.field private final a:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LqN;->a:Lcom/kms/kmsshared/KMSApplication;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LqN;->a:Lcom/kms/kmsshared/KMSApplication;

    return-object v0
.end method
