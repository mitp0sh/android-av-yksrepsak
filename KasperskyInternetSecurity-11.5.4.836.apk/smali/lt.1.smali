.class public final Llt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kms/antispam/ContactsBlocker;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/ContactsBlocker;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Llt;->a:Lcom/kms/antispam/ContactsBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Llt;->a:Lcom/kms/antispam/ContactsBlocker;

    invoke-virtual {v0}, Lcom/kms/antispam/ContactsBlocker;->b()I

    .line 287
    return-void
.end method
