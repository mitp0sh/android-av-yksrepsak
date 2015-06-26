.class public final Ldr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/WebRegistrationThread;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Ldr;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Ldr;->a:Lcom/kaspersky/kts/antitheft/WebRegistrationThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kaspersky/kts/antitheft/WebRegistrationThread;->a(Z)V

    .line 252
    return-void
.end method
