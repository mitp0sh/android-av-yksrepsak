.class public final LoK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 16
    new-instance v0, LeN;

    invoke-direct {v0, p0}, LeN;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0}, LeN;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return-object v0

    .line 44
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 46
    const v1, 0x7f070168

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :pswitch_2
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_3
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070232

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_4
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07018d

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_5
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_6
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_7
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07034d

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_8
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070387

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 68
    const v1, 0x7f0703b4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    :pswitch_a
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 73
    const v1, 0x7f0703b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 76
    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 78
    const v1, 0x7f0703b6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    :pswitch_c
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070190

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :pswitch_d
    new-instance v1, LoN;

    invoke-direct {v1, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0700a0

    invoke-virtual {v1, v2}, LoN;->b(I)LoN;

    move-result-object v1

    const v2, 0x7f07021d

    invoke-virtual {v1, v2, v0}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 90
    :pswitch_e
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070233

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :pswitch_f
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070234

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_c
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;LkU;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LkR;->a(Landroid/content/Context;ILkU;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 33
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f070220

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    const v1, 0x7f07011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;LkU;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, LkR;->a(Landroid/content/Context;ILkU;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
